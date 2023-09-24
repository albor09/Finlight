import 'package:bloc/bloc.dart';
import 'package:finance_manager/core/locator.dart';
import 'package:finance_manager/data/repositories/category_repository.dart';
import 'package:finance_manager/data/repositories/transaction_repository.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/domain/entities/data_selection.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:finance_manager/domain/repositories/category_repository.dart';
import 'package:finance_manager/domain/repositories/transaction_repository.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_categories_bloc.freezed.dart';

@freezed
class CoreCategoriesEvent with _$CoreCategoriesEvent {
  const CoreCategoriesEvent._();

  const factory CoreCategoriesEvent.loadCategories(
      {required DataSelection dataSelection}) = _LoadCoreCategoriesEvent;
  const factory CoreCategoriesEvent.addCategory({
    required CategoryEntity categoryEntity,
  }) = _AddCategoryCoreCategoriesEvent;
  const factory CoreCategoriesEvent.addTransaction({
    required TransactionEntity transactionEntity,
  }) = _AddTransactionCoreCategoriesEvent;
  const factory CoreCategoriesEvent.deleteCategory({
    required int id,
  }) = _DeleteCategoryCoreCategoriesEvent;
  const factory CoreCategoriesEvent.deleteTransaction({
    required int id,
  }) = _DeleteTransactionCoreCategoriesEvent;
  const factory CoreCategoriesEvent.updateCategory({
    required CategoryEntity categoryEntity,
  }) = _UpdateCategoryCoreCategoriesEvent;
  const factory CoreCategoriesEvent.updateTransaction({
    required TransactionEntity transactionEntity,
  }) = _UpdateTransactionCoreCategoriesEvent;
  const factory CoreCategoriesEvent.deleteAllData() =
      _DeleteAllDataCoreCategoriesEvent;
}

@freezed
class CoreCategoriesState with _$CoreCategoriesState {
  const CoreCategoriesState._();

  List<CategoryEntity> get getCategories =>
      maybeMap(orElse: () => [], loaded: (state) => state.categories);

  bool get isLoading => maybeMap(orElse: () => false, loading: (_) => true);
  bool get isLoaded => maybeMap(orElse: () => false, loaded: (_) => true);

  DataSelection? get getDataSelection =>
      maybeMap(orElse: () => null, loaded: (state) => state.dataSelection);

  const factory CoreCategoriesState.initial() = _InitialCoreCategoriesState;
  const factory CoreCategoriesState.loading() = _LoadingCoreCategoriesState;
  const factory CoreCategoriesState.loaded(
      {required List<CategoryEntity> categories,
      required DataSelection dataSelection}) = _LoadedCoreCategoriesState;
  const factory CoreCategoriesState.error() = _ErrorCoreCategoriesState;
}

class CoreCategoriesBloc
    extends Bloc<CoreCategoriesEvent, CoreCategoriesState> {
  CoreCategoriesBloc(
      {CategoryRepository? categoryRepository,
      TransactionRepository? transactionRepository})
      : _categoryRepository =
            categoryRepository ?? locator.get<CategoryRepositoryImp>(),
        _transactionRepository =
            transactionRepository ?? locator.get<TransactionRepositoryImp>(),
        super(const CoreCategoriesState.initial()) {
    on<CoreCategoriesEvent>((event, emit) => event.map(
        loadCategories: (event) => _onLoadCategories(event, emit),
        addCategory: (event) => _onAddCategory(event, emit),
        addTransaction: (event) => _onAddTransaction(event, emit),
        deleteCategory: (event) => _onDeleteCategory(event, emit),
        deleteTransaction: (event) => _onDeleteTransaction(event, emit),
        updateCategory: (event) => _onUpdateCategory(event, emit),
        updateTransaction: (event) => _onUpdateTransaction(event, emit),
        deleteAllData: (event) => _onDeleteAllData(event, emit)));
  }

  final CategoryRepository _categoryRepository;
  final TransactionRepository _transactionRepository;

  Future<void> _onLoadCategories(
      _LoadCoreCategoriesEvent event, Emitter emit) async {
    try {
      _emitLoading(emit);
      final data = await _categoryRepository.getCategoriesInRange(
          event.dataSelection.range.toDateTimeRange(),
          event.dataSelection.categoryType);
      _emitLoaded(emit, data, event.dataSelection);
    } catch (e) {
      _emitError(emit);
      rethrow;
    }
  }

  Future<void> _onAddCategory(
      _AddCategoryCoreCategoriesEvent event, Emitter emit) async {
    try {
      final data = await _categoryRepository.saveCategory(event.categoryEntity);
      if (!state.getDataSelection!.isCategoryMatch(event.categoryEntity))
        return;
      _emitLoaded(emit, [...state.getCategories, data], state.getDataSelection);
    } catch (e) {
      _emitError(emit);
      rethrow;
    }
  }

  Future<void> _onAddTransaction(
      _AddTransactionCoreCategoriesEvent event, Emitter emit) async {
    try {
      await _transactionRepository.saveTransaction(event.transactionEntity);
      if (!state.getDataSelection!.isTransactionMatch(event.transactionEntity))
        return;
      final currentCategories = [...state.getCategories];
      final ind = currentCategories.indexWhere(
          (element) => element.id == event.transactionEntity.categoryId);
      if (ind == -1) return;
      currentCategories[ind] =
          currentCategories[ind].updateCategory(event.transactionEntity.value);
      _emitLoaded(emit, currentCategories, state.getDataSelection);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _onDeleteCategory(
      _DeleteCategoryCoreCategoriesEvent event, Emitter emit) async {
    try {
      await _categoryRepository.removeCategory(event.id);

      if (state.getCategories
              .firstWhereOrNull((element) => element.id == event.id) ==
          null) return;
      final categories = [...state.getCategories];
      emit(CoreCategoriesState.loaded(
          categories: categories
            ..removeWhere((element) => element.id == event.id),
          dataSelection: state.getDataSelection!));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _onDeleteTransaction(
      _DeleteTransactionCoreCategoriesEvent event, Emitter emit) async {}
  Future<void> _onUpdateCategory(
      _UpdateCategoryCoreCategoriesEvent event, Emitter emit) async {
    try {
      await _categoryRepository.updateCategory(event.categoryEntity);
      final categories = [...state.getCategories];
      final updatedCategoryind = categories
          .indexWhere((element) => element.id == event.categoryEntity.id);
      if (updatedCategoryind == -1) return;
      categories[updatedCategoryind] = categories[updatedCategoryind].copyWith(
          name: event.categoryEntity.name, color: event.categoryEntity.color);
      emit(CoreCategoriesState.loaded(
          categories: categories, dataSelection: state.getDataSelection!));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _onUpdateTransaction(
      _UpdateTransactionCoreCategoriesEvent event, Emitter emit) async {}

  Future<void> _onDeleteAllData(_DeleteAllDataCoreCategoriesEvent event,
      Emitter<CoreCategoriesState> emit) async {
    try {
      await _categoryRepository.deleteAllCategories();
      await _transactionRepository.deleteAllTransactions();
      _emitLoaded(emit, [], state.getDataSelection);
    } catch (e) {
      rethrow;
    }
  }

  void _emitError(emit) => emit(const CoreCategoriesState.error());
  void _emitLoading(emit) => emit(const CoreCategoriesState.loading());
  void _emitLoaded(emit, List<CategoryEntity> categories, dataSelection) =>
      emit(CoreCategoriesState.loaded(
          categories: categories..sort(), dataSelection: dataSelection));
}
