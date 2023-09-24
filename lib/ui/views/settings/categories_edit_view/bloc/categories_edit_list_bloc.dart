import 'package:bloc/bloc.dart';
import 'package:finance_manager/core/locator.dart';
import 'package:finance_manager/data/repositories/category_repository.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:finance_manager/domain/repositories/category_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_edit_list_bloc.freezed.dart';

@freezed
class EditCategoriesEvent with _$EditCategoriesEvent {
  const EditCategoriesEvent._();

  const factory EditCategoriesEvent.loadAllCategories() =
      _LoadAllCategoriesEditCategoriesEvent;
  const factory EditCategoriesEvent.loadAllCategoriesByType(
          {required TransactionType type}) =
      _LoadAllCategoriesByTypeEditCategoriesEvent;
  const factory EditCategoriesEvent.removeCategory({required int id}) =
      _RemoveCategoryEditCategoriesEvent;
  const factory EditCategoriesEvent.updateCategory(
          {required CategoryEntity categoryEntity}) =
      _UpdateCategoryEditCategoriesEvent;
}

@freezed
class EditCategoriesState with _$EditCategoriesState {
  const EditCategoriesState._();

  List<CategoryEntity> get getCategories =>
      maybeMap(orElse: () => [], loaded: (state) => state.categories);

  bool get isLoading => maybeMap(orElse: () => false, loading: (_) => true);

  const factory EditCategoriesState.initial() = _InitialEditCategoriesState;
  const factory EditCategoriesState.loading() = _LoadingEditCategoriesState;
  const factory EditCategoriesState.loaded(
      {required List<CategoryEntity> categories}) = _LoadedEditCategoriesState;
  const factory EditCategoriesState.error() = _ErrorEditCategoriesState;
}

class EditCategoriesBloc
    extends Bloc<EditCategoriesEvent, EditCategoriesState> {
  EditCategoriesBloc({CategoryRepository? categoryRepository})
      : _categoryRepository =
            categoryRepository ?? locator.get<CategoryRepositoryImp>(),
        super(const EditCategoriesState.initial()) {
    on<EditCategoriesEvent>((event, emit) => event.map(
        loadAllCategories: (event) => _onLoadAllCategories(event, emit),
        loadAllCategoriesByType: (event) =>
            _onLoadAllCategoriesByType(event, emit),
        updateCategory: (event) => _onUpdateCategory(event, emit),
        removeCategory: (event) => _onRemoveCategory(event, emit)));
  }

  final CategoryRepository _categoryRepository;

  Future<void> _onLoadAllCategories(event, emit) async {
    try {
      emit(const EditCategoriesState.loading());
      final data = await _categoryRepository.getAllCategories();
      emit(EditCategoriesState.loaded(categories: data));
    } catch (e) {
      emit(const EditCategoriesState.error());
      rethrow;
    }
  }

  Future<void> _onRemoveCategory(
      _RemoveCategoryEditCategoriesEvent event, emit) async {
    try {
      final categories = [...state.getCategories];
      emit(EditCategoriesState.loaded(
          categories: categories
            ..removeWhere((element) => element.id == event.id)));
    } catch (e) {
      emit(const EditCategoriesState.error());
      rethrow;
    }
  }

  Future<void> _onLoadAllCategoriesByType(
      _LoadAllCategoriesByTypeEditCategoriesEvent event, emit) async {
    try {
      final data = await _categoryRepository.getAllCategoriesByType(event.type);
      emit(EditCategoriesState.loaded(categories: data));
    } catch (e) {
      emit(const EditCategoriesState.error());
      rethrow;
    }
  }

  Future<void> _onUpdateCategory(_UpdateCategoryEditCategoriesEvent event,
      Emitter<EditCategoriesState> emit) async {
    try {
      final categories = [...state.getCategories];
      final updatedCategotyInd = categories
          .indexWhere((element) => element.id == event.categoryEntity.id);
      categories[updatedCategotyInd] = categories[updatedCategotyInd].copyWith(
          name: event.categoryEntity.name, color: event.categoryEntity.color);
      emit(EditCategoriesState.loaded(categories: categories));
    } catch (e) {
      emit(const EditCategoriesState.error());
      rethrow;
    }
  }
}
