// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core_categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoreCategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSelection dataSelection) loadCategories,
    required TResult Function(CategoryEntity categoryEntity) addCategory,
    required TResult Function(TransactionEntity transactionEntity)
        addTransaction,
    required TResult Function(int id) deleteCategory,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(CategoryEntity categoryEntity) updateCategory,
    required TResult Function(TransactionEntity transactionEntity)
        updateTransaction,
    required TResult Function() deleteAllData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataSelection dataSelection)? loadCategories,
    TResult? Function(CategoryEntity categoryEntity)? addCategory,
    TResult? Function(TransactionEntity transactionEntity)? addTransaction,
    TResult? Function(int id)? deleteCategory,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function(CategoryEntity categoryEntity)? updateCategory,
    TResult? Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult? Function()? deleteAllData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSelection dataSelection)? loadCategories,
    TResult Function(CategoryEntity categoryEntity)? addCategory,
    TResult Function(TransactionEntity transactionEntity)? addTransaction,
    TResult Function(int id)? deleteCategory,
    TResult Function(int id)? deleteTransaction,
    TResult Function(CategoryEntity categoryEntity)? updateCategory,
    TResult Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult Function()? deleteAllData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCoreCategoriesEvent value) loadCategories,
    required TResult Function(_AddCategoryCoreCategoriesEvent value)
        addCategory,
    required TResult Function(_AddTransactionCoreCategoriesEvent value)
        addTransaction,
    required TResult Function(_DeleteCategoryCoreCategoriesEvent value)
        deleteCategory,
    required TResult Function(_DeleteTransactionCoreCategoriesEvent value)
        deleteTransaction,
    required TResult Function(_UpdateCategoryCoreCategoriesEvent value)
        updateCategory,
    required TResult Function(_UpdateTransactionCoreCategoriesEvent value)
        updateTransaction,
    required TResult Function(_DeleteAllDataCoreCategoriesEvent value)
        deleteAllData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult? Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult? Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult? Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult? Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult? Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult? Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult? Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreCategoriesEventCopyWith<$Res> {
  factory $CoreCategoriesEventCopyWith(
          CoreCategoriesEvent value, $Res Function(CoreCategoriesEvent) then) =
      _$CoreCategoriesEventCopyWithImpl<$Res, CoreCategoriesEvent>;
}

/// @nodoc
class _$CoreCategoriesEventCopyWithImpl<$Res, $Val extends CoreCategoriesEvent>
    implements $CoreCategoriesEventCopyWith<$Res> {
  _$CoreCategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadCoreCategoriesEventCopyWith<$Res> {
  factory _$$_LoadCoreCategoriesEventCopyWith(_$_LoadCoreCategoriesEvent value,
          $Res Function(_$_LoadCoreCategoriesEvent) then) =
      __$$_LoadCoreCategoriesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DataSelection dataSelection});
}

/// @nodoc
class __$$_LoadCoreCategoriesEventCopyWithImpl<$Res>
    extends _$CoreCategoriesEventCopyWithImpl<$Res, _$_LoadCoreCategoriesEvent>
    implements _$$_LoadCoreCategoriesEventCopyWith<$Res> {
  __$$_LoadCoreCategoriesEventCopyWithImpl(_$_LoadCoreCategoriesEvent _value,
      $Res Function(_$_LoadCoreCategoriesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataSelection = null,
  }) {
    return _then(_$_LoadCoreCategoriesEvent(
      dataSelection: null == dataSelection
          ? _value.dataSelection
          : dataSelection // ignore: cast_nullable_to_non_nullable
              as DataSelection,
    ));
  }
}

/// @nodoc

class _$_LoadCoreCategoriesEvent extends _LoadCoreCategoriesEvent {
  const _$_LoadCoreCategoriesEvent({required this.dataSelection}) : super._();

  @override
  final DataSelection dataSelection;

  @override
  String toString() {
    return 'CoreCategoriesEvent.loadCategories(dataSelection: $dataSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadCoreCategoriesEvent &&
            (identical(other.dataSelection, dataSelection) ||
                other.dataSelection == dataSelection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataSelection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadCoreCategoriesEventCopyWith<_$_LoadCoreCategoriesEvent>
      get copyWith =>
          __$$_LoadCoreCategoriesEventCopyWithImpl<_$_LoadCoreCategoriesEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSelection dataSelection) loadCategories,
    required TResult Function(CategoryEntity categoryEntity) addCategory,
    required TResult Function(TransactionEntity transactionEntity)
        addTransaction,
    required TResult Function(int id) deleteCategory,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(CategoryEntity categoryEntity) updateCategory,
    required TResult Function(TransactionEntity transactionEntity)
        updateTransaction,
    required TResult Function() deleteAllData,
  }) {
    return loadCategories(dataSelection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataSelection dataSelection)? loadCategories,
    TResult? Function(CategoryEntity categoryEntity)? addCategory,
    TResult? Function(TransactionEntity transactionEntity)? addTransaction,
    TResult? Function(int id)? deleteCategory,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function(CategoryEntity categoryEntity)? updateCategory,
    TResult? Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult? Function()? deleteAllData,
  }) {
    return loadCategories?.call(dataSelection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSelection dataSelection)? loadCategories,
    TResult Function(CategoryEntity categoryEntity)? addCategory,
    TResult Function(TransactionEntity transactionEntity)? addTransaction,
    TResult Function(int id)? deleteCategory,
    TResult Function(int id)? deleteTransaction,
    TResult Function(CategoryEntity categoryEntity)? updateCategory,
    TResult Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult Function()? deleteAllData,
    required TResult orElse(),
  }) {
    if (loadCategories != null) {
      return loadCategories(dataSelection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCoreCategoriesEvent value) loadCategories,
    required TResult Function(_AddCategoryCoreCategoriesEvent value)
        addCategory,
    required TResult Function(_AddTransactionCoreCategoriesEvent value)
        addTransaction,
    required TResult Function(_DeleteCategoryCoreCategoriesEvent value)
        deleteCategory,
    required TResult Function(_DeleteTransactionCoreCategoriesEvent value)
        deleteTransaction,
    required TResult Function(_UpdateCategoryCoreCategoriesEvent value)
        updateCategory,
    required TResult Function(_UpdateTransactionCoreCategoriesEvent value)
        updateTransaction,
    required TResult Function(_DeleteAllDataCoreCategoriesEvent value)
        deleteAllData,
  }) {
    return loadCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult? Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult? Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult? Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult? Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult? Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult? Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult? Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
  }) {
    return loadCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
    required TResult orElse(),
  }) {
    if (loadCategories != null) {
      return loadCategories(this);
    }
    return orElse();
  }
}

abstract class _LoadCoreCategoriesEvent extends CoreCategoriesEvent {
  const factory _LoadCoreCategoriesEvent(
          {required final DataSelection dataSelection}) =
      _$_LoadCoreCategoriesEvent;
  const _LoadCoreCategoriesEvent._() : super._();

  DataSelection get dataSelection;
  @JsonKey(ignore: true)
  _$$_LoadCoreCategoriesEventCopyWith<_$_LoadCoreCategoriesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCategoryCoreCategoriesEventCopyWith<$Res> {
  factory _$$_AddCategoryCoreCategoriesEventCopyWith(
          _$_AddCategoryCoreCategoriesEvent value,
          $Res Function(_$_AddCategoryCoreCategoriesEvent) then) =
      __$$_AddCategoryCoreCategoriesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryEntity categoryEntity});
}

/// @nodoc
class __$$_AddCategoryCoreCategoriesEventCopyWithImpl<$Res>
    extends _$CoreCategoriesEventCopyWithImpl<$Res,
        _$_AddCategoryCoreCategoriesEvent>
    implements _$$_AddCategoryCoreCategoriesEventCopyWith<$Res> {
  __$$_AddCategoryCoreCategoriesEventCopyWithImpl(
      _$_AddCategoryCoreCategoriesEvent _value,
      $Res Function(_$_AddCategoryCoreCategoriesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryEntity = null,
  }) {
    return _then(_$_AddCategoryCoreCategoriesEvent(
      categoryEntity: null == categoryEntity
          ? _value.categoryEntity
          : categoryEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
    ));
  }
}

/// @nodoc

class _$_AddCategoryCoreCategoriesEvent
    extends _AddCategoryCoreCategoriesEvent {
  const _$_AddCategoryCoreCategoriesEvent({required this.categoryEntity})
      : super._();

  @override
  final CategoryEntity categoryEntity;

  @override
  String toString() {
    return 'CoreCategoriesEvent.addCategory(categoryEntity: $categoryEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCategoryCoreCategoriesEvent &&
            (identical(other.categoryEntity, categoryEntity) ||
                other.categoryEntity == categoryEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCategoryCoreCategoriesEventCopyWith<_$_AddCategoryCoreCategoriesEvent>
      get copyWith => __$$_AddCategoryCoreCategoriesEventCopyWithImpl<
          _$_AddCategoryCoreCategoriesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSelection dataSelection) loadCategories,
    required TResult Function(CategoryEntity categoryEntity) addCategory,
    required TResult Function(TransactionEntity transactionEntity)
        addTransaction,
    required TResult Function(int id) deleteCategory,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(CategoryEntity categoryEntity) updateCategory,
    required TResult Function(TransactionEntity transactionEntity)
        updateTransaction,
    required TResult Function() deleteAllData,
  }) {
    return addCategory(categoryEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataSelection dataSelection)? loadCategories,
    TResult? Function(CategoryEntity categoryEntity)? addCategory,
    TResult? Function(TransactionEntity transactionEntity)? addTransaction,
    TResult? Function(int id)? deleteCategory,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function(CategoryEntity categoryEntity)? updateCategory,
    TResult? Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult? Function()? deleteAllData,
  }) {
    return addCategory?.call(categoryEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSelection dataSelection)? loadCategories,
    TResult Function(CategoryEntity categoryEntity)? addCategory,
    TResult Function(TransactionEntity transactionEntity)? addTransaction,
    TResult Function(int id)? deleteCategory,
    TResult Function(int id)? deleteTransaction,
    TResult Function(CategoryEntity categoryEntity)? updateCategory,
    TResult Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult Function()? deleteAllData,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(categoryEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCoreCategoriesEvent value) loadCategories,
    required TResult Function(_AddCategoryCoreCategoriesEvent value)
        addCategory,
    required TResult Function(_AddTransactionCoreCategoriesEvent value)
        addTransaction,
    required TResult Function(_DeleteCategoryCoreCategoriesEvent value)
        deleteCategory,
    required TResult Function(_DeleteTransactionCoreCategoriesEvent value)
        deleteTransaction,
    required TResult Function(_UpdateCategoryCoreCategoriesEvent value)
        updateCategory,
    required TResult Function(_UpdateTransactionCoreCategoriesEvent value)
        updateTransaction,
    required TResult Function(_DeleteAllDataCoreCategoriesEvent value)
        deleteAllData,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult? Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult? Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult? Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult? Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult? Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult? Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult? Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class _AddCategoryCoreCategoriesEvent extends CoreCategoriesEvent {
  const factory _AddCategoryCoreCategoriesEvent(
          {required final CategoryEntity categoryEntity}) =
      _$_AddCategoryCoreCategoriesEvent;
  const _AddCategoryCoreCategoriesEvent._() : super._();

  CategoryEntity get categoryEntity;
  @JsonKey(ignore: true)
  _$$_AddCategoryCoreCategoriesEventCopyWith<_$_AddCategoryCoreCategoriesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddTransactionCoreCategoriesEventCopyWith<$Res> {
  factory _$$_AddTransactionCoreCategoriesEventCopyWith(
          _$_AddTransactionCoreCategoriesEvent value,
          $Res Function(_$_AddTransactionCoreCategoriesEvent) then) =
      __$$_AddTransactionCoreCategoriesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionEntity transactionEntity});
}

/// @nodoc
class __$$_AddTransactionCoreCategoriesEventCopyWithImpl<$Res>
    extends _$CoreCategoriesEventCopyWithImpl<$Res,
        _$_AddTransactionCoreCategoriesEvent>
    implements _$$_AddTransactionCoreCategoriesEventCopyWith<$Res> {
  __$$_AddTransactionCoreCategoriesEventCopyWithImpl(
      _$_AddTransactionCoreCategoriesEvent _value,
      $Res Function(_$_AddTransactionCoreCategoriesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionEntity = null,
  }) {
    return _then(_$_AddTransactionCoreCategoriesEvent(
      transactionEntity: null == transactionEntity
          ? _value.transactionEntity
          : transactionEntity // ignore: cast_nullable_to_non_nullable
              as TransactionEntity,
    ));
  }
}

/// @nodoc

class _$_AddTransactionCoreCategoriesEvent
    extends _AddTransactionCoreCategoriesEvent {
  const _$_AddTransactionCoreCategoriesEvent({required this.transactionEntity})
      : super._();

  @override
  final TransactionEntity transactionEntity;

  @override
  String toString() {
    return 'CoreCategoriesEvent.addTransaction(transactionEntity: $transactionEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTransactionCoreCategoriesEvent &&
            (identical(other.transactionEntity, transactionEntity) ||
                other.transactionEntity == transactionEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTransactionCoreCategoriesEventCopyWith<
          _$_AddTransactionCoreCategoriesEvent>
      get copyWith => __$$_AddTransactionCoreCategoriesEventCopyWithImpl<
          _$_AddTransactionCoreCategoriesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSelection dataSelection) loadCategories,
    required TResult Function(CategoryEntity categoryEntity) addCategory,
    required TResult Function(TransactionEntity transactionEntity)
        addTransaction,
    required TResult Function(int id) deleteCategory,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(CategoryEntity categoryEntity) updateCategory,
    required TResult Function(TransactionEntity transactionEntity)
        updateTransaction,
    required TResult Function() deleteAllData,
  }) {
    return addTransaction(transactionEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataSelection dataSelection)? loadCategories,
    TResult? Function(CategoryEntity categoryEntity)? addCategory,
    TResult? Function(TransactionEntity transactionEntity)? addTransaction,
    TResult? Function(int id)? deleteCategory,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function(CategoryEntity categoryEntity)? updateCategory,
    TResult? Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult? Function()? deleteAllData,
  }) {
    return addTransaction?.call(transactionEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSelection dataSelection)? loadCategories,
    TResult Function(CategoryEntity categoryEntity)? addCategory,
    TResult Function(TransactionEntity transactionEntity)? addTransaction,
    TResult Function(int id)? deleteCategory,
    TResult Function(int id)? deleteTransaction,
    TResult Function(CategoryEntity categoryEntity)? updateCategory,
    TResult Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult Function()? deleteAllData,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(transactionEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCoreCategoriesEvent value) loadCategories,
    required TResult Function(_AddCategoryCoreCategoriesEvent value)
        addCategory,
    required TResult Function(_AddTransactionCoreCategoriesEvent value)
        addTransaction,
    required TResult Function(_DeleteCategoryCoreCategoriesEvent value)
        deleteCategory,
    required TResult Function(_DeleteTransactionCoreCategoriesEvent value)
        deleteTransaction,
    required TResult Function(_UpdateCategoryCoreCategoriesEvent value)
        updateCategory,
    required TResult Function(_UpdateTransactionCoreCategoriesEvent value)
        updateTransaction,
    required TResult Function(_DeleteAllDataCoreCategoriesEvent value)
        deleteAllData,
  }) {
    return addTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult? Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult? Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult? Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult? Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult? Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult? Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult? Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
  }) {
    return addTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(this);
    }
    return orElse();
  }
}

abstract class _AddTransactionCoreCategoriesEvent extends CoreCategoriesEvent {
  const factory _AddTransactionCoreCategoriesEvent(
          {required final TransactionEntity transactionEntity}) =
      _$_AddTransactionCoreCategoriesEvent;
  const _AddTransactionCoreCategoriesEvent._() : super._();

  TransactionEntity get transactionEntity;
  @JsonKey(ignore: true)
  _$$_AddTransactionCoreCategoriesEventCopyWith<
          _$_AddTransactionCoreCategoriesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCategoryCoreCategoriesEventCopyWith<$Res> {
  factory _$$_DeleteCategoryCoreCategoriesEventCopyWith(
          _$_DeleteCategoryCoreCategoriesEvent value,
          $Res Function(_$_DeleteCategoryCoreCategoriesEvent) then) =
      __$$_DeleteCategoryCoreCategoriesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteCategoryCoreCategoriesEventCopyWithImpl<$Res>
    extends _$CoreCategoriesEventCopyWithImpl<$Res,
        _$_DeleteCategoryCoreCategoriesEvent>
    implements _$$_DeleteCategoryCoreCategoriesEventCopyWith<$Res> {
  __$$_DeleteCategoryCoreCategoriesEventCopyWithImpl(
      _$_DeleteCategoryCoreCategoriesEvent _value,
      $Res Function(_$_DeleteCategoryCoreCategoriesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteCategoryCoreCategoriesEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteCategoryCoreCategoriesEvent
    extends _DeleteCategoryCoreCategoriesEvent {
  const _$_DeleteCategoryCoreCategoriesEvent({required this.id}) : super._();

  @override
  final int id;

  @override
  String toString() {
    return 'CoreCategoriesEvent.deleteCategory(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCategoryCoreCategoriesEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCategoryCoreCategoriesEventCopyWith<
          _$_DeleteCategoryCoreCategoriesEvent>
      get copyWith => __$$_DeleteCategoryCoreCategoriesEventCopyWithImpl<
          _$_DeleteCategoryCoreCategoriesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSelection dataSelection) loadCategories,
    required TResult Function(CategoryEntity categoryEntity) addCategory,
    required TResult Function(TransactionEntity transactionEntity)
        addTransaction,
    required TResult Function(int id) deleteCategory,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(CategoryEntity categoryEntity) updateCategory,
    required TResult Function(TransactionEntity transactionEntity)
        updateTransaction,
    required TResult Function() deleteAllData,
  }) {
    return deleteCategory(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataSelection dataSelection)? loadCategories,
    TResult? Function(CategoryEntity categoryEntity)? addCategory,
    TResult? Function(TransactionEntity transactionEntity)? addTransaction,
    TResult? Function(int id)? deleteCategory,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function(CategoryEntity categoryEntity)? updateCategory,
    TResult? Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult? Function()? deleteAllData,
  }) {
    return deleteCategory?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSelection dataSelection)? loadCategories,
    TResult Function(CategoryEntity categoryEntity)? addCategory,
    TResult Function(TransactionEntity transactionEntity)? addTransaction,
    TResult Function(int id)? deleteCategory,
    TResult Function(int id)? deleteTransaction,
    TResult Function(CategoryEntity categoryEntity)? updateCategory,
    TResult Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult Function()? deleteAllData,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCoreCategoriesEvent value) loadCategories,
    required TResult Function(_AddCategoryCoreCategoriesEvent value)
        addCategory,
    required TResult Function(_AddTransactionCoreCategoriesEvent value)
        addTransaction,
    required TResult Function(_DeleteCategoryCoreCategoriesEvent value)
        deleteCategory,
    required TResult Function(_DeleteTransactionCoreCategoriesEvent value)
        deleteTransaction,
    required TResult Function(_UpdateCategoryCoreCategoriesEvent value)
        updateCategory,
    required TResult Function(_UpdateTransactionCoreCategoriesEvent value)
        updateTransaction,
    required TResult Function(_DeleteAllDataCoreCategoriesEvent value)
        deleteAllData,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult? Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult? Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult? Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult? Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult? Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult? Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult? Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(this);
    }
    return orElse();
  }
}

abstract class _DeleteCategoryCoreCategoriesEvent extends CoreCategoriesEvent {
  const factory _DeleteCategoryCoreCategoriesEvent({required final int id}) =
      _$_DeleteCategoryCoreCategoriesEvent;
  const _DeleteCategoryCoreCategoriesEvent._() : super._();

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteCategoryCoreCategoriesEventCopyWith<
          _$_DeleteCategoryCoreCategoriesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteTransactionCoreCategoriesEventCopyWith<$Res> {
  factory _$$_DeleteTransactionCoreCategoriesEventCopyWith(
          _$_DeleteTransactionCoreCategoriesEvent value,
          $Res Function(_$_DeleteTransactionCoreCategoriesEvent) then) =
      __$$_DeleteTransactionCoreCategoriesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteTransactionCoreCategoriesEventCopyWithImpl<$Res>
    extends _$CoreCategoriesEventCopyWithImpl<$Res,
        _$_DeleteTransactionCoreCategoriesEvent>
    implements _$$_DeleteTransactionCoreCategoriesEventCopyWith<$Res> {
  __$$_DeleteTransactionCoreCategoriesEventCopyWithImpl(
      _$_DeleteTransactionCoreCategoriesEvent _value,
      $Res Function(_$_DeleteTransactionCoreCategoriesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteTransactionCoreCategoriesEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteTransactionCoreCategoriesEvent
    extends _DeleteTransactionCoreCategoriesEvent {
  const _$_DeleteTransactionCoreCategoriesEvent({required this.id}) : super._();

  @override
  final int id;

  @override
  String toString() {
    return 'CoreCategoriesEvent.deleteTransaction(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteTransactionCoreCategoriesEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteTransactionCoreCategoriesEventCopyWith<
          _$_DeleteTransactionCoreCategoriesEvent>
      get copyWith => __$$_DeleteTransactionCoreCategoriesEventCopyWithImpl<
          _$_DeleteTransactionCoreCategoriesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSelection dataSelection) loadCategories,
    required TResult Function(CategoryEntity categoryEntity) addCategory,
    required TResult Function(TransactionEntity transactionEntity)
        addTransaction,
    required TResult Function(int id) deleteCategory,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(CategoryEntity categoryEntity) updateCategory,
    required TResult Function(TransactionEntity transactionEntity)
        updateTransaction,
    required TResult Function() deleteAllData,
  }) {
    return deleteTransaction(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataSelection dataSelection)? loadCategories,
    TResult? Function(CategoryEntity categoryEntity)? addCategory,
    TResult? Function(TransactionEntity transactionEntity)? addTransaction,
    TResult? Function(int id)? deleteCategory,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function(CategoryEntity categoryEntity)? updateCategory,
    TResult? Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult? Function()? deleteAllData,
  }) {
    return deleteTransaction?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSelection dataSelection)? loadCategories,
    TResult Function(CategoryEntity categoryEntity)? addCategory,
    TResult Function(TransactionEntity transactionEntity)? addTransaction,
    TResult Function(int id)? deleteCategory,
    TResult Function(int id)? deleteTransaction,
    TResult Function(CategoryEntity categoryEntity)? updateCategory,
    TResult Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult Function()? deleteAllData,
    required TResult orElse(),
  }) {
    if (deleteTransaction != null) {
      return deleteTransaction(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCoreCategoriesEvent value) loadCategories,
    required TResult Function(_AddCategoryCoreCategoriesEvent value)
        addCategory,
    required TResult Function(_AddTransactionCoreCategoriesEvent value)
        addTransaction,
    required TResult Function(_DeleteCategoryCoreCategoriesEvent value)
        deleteCategory,
    required TResult Function(_DeleteTransactionCoreCategoriesEvent value)
        deleteTransaction,
    required TResult Function(_UpdateCategoryCoreCategoriesEvent value)
        updateCategory,
    required TResult Function(_UpdateTransactionCoreCategoriesEvent value)
        updateTransaction,
    required TResult Function(_DeleteAllDataCoreCategoriesEvent value)
        deleteAllData,
  }) {
    return deleteTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult? Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult? Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult? Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult? Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult? Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult? Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult? Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
  }) {
    return deleteTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
    required TResult orElse(),
  }) {
    if (deleteTransaction != null) {
      return deleteTransaction(this);
    }
    return orElse();
  }
}

abstract class _DeleteTransactionCoreCategoriesEvent
    extends CoreCategoriesEvent {
  const factory _DeleteTransactionCoreCategoriesEvent({required final int id}) =
      _$_DeleteTransactionCoreCategoriesEvent;
  const _DeleteTransactionCoreCategoriesEvent._() : super._();

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteTransactionCoreCategoriesEventCopyWith<
          _$_DeleteTransactionCoreCategoriesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCategoryCoreCategoriesEventCopyWith<$Res> {
  factory _$$_UpdateCategoryCoreCategoriesEventCopyWith(
          _$_UpdateCategoryCoreCategoriesEvent value,
          $Res Function(_$_UpdateCategoryCoreCategoriesEvent) then) =
      __$$_UpdateCategoryCoreCategoriesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryEntity categoryEntity});
}

/// @nodoc
class __$$_UpdateCategoryCoreCategoriesEventCopyWithImpl<$Res>
    extends _$CoreCategoriesEventCopyWithImpl<$Res,
        _$_UpdateCategoryCoreCategoriesEvent>
    implements _$$_UpdateCategoryCoreCategoriesEventCopyWith<$Res> {
  __$$_UpdateCategoryCoreCategoriesEventCopyWithImpl(
      _$_UpdateCategoryCoreCategoriesEvent _value,
      $Res Function(_$_UpdateCategoryCoreCategoriesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryEntity = null,
  }) {
    return _then(_$_UpdateCategoryCoreCategoriesEvent(
      categoryEntity: null == categoryEntity
          ? _value.categoryEntity
          : categoryEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
    ));
  }
}

/// @nodoc

class _$_UpdateCategoryCoreCategoriesEvent
    extends _UpdateCategoryCoreCategoriesEvent {
  const _$_UpdateCategoryCoreCategoriesEvent({required this.categoryEntity})
      : super._();

  @override
  final CategoryEntity categoryEntity;

  @override
  String toString() {
    return 'CoreCategoriesEvent.updateCategory(categoryEntity: $categoryEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCategoryCoreCategoriesEvent &&
            (identical(other.categoryEntity, categoryEntity) ||
                other.categoryEntity == categoryEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCategoryCoreCategoriesEventCopyWith<
          _$_UpdateCategoryCoreCategoriesEvent>
      get copyWith => __$$_UpdateCategoryCoreCategoriesEventCopyWithImpl<
          _$_UpdateCategoryCoreCategoriesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSelection dataSelection) loadCategories,
    required TResult Function(CategoryEntity categoryEntity) addCategory,
    required TResult Function(TransactionEntity transactionEntity)
        addTransaction,
    required TResult Function(int id) deleteCategory,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(CategoryEntity categoryEntity) updateCategory,
    required TResult Function(TransactionEntity transactionEntity)
        updateTransaction,
    required TResult Function() deleteAllData,
  }) {
    return updateCategory(categoryEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataSelection dataSelection)? loadCategories,
    TResult? Function(CategoryEntity categoryEntity)? addCategory,
    TResult? Function(TransactionEntity transactionEntity)? addTransaction,
    TResult? Function(int id)? deleteCategory,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function(CategoryEntity categoryEntity)? updateCategory,
    TResult? Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult? Function()? deleteAllData,
  }) {
    return updateCategory?.call(categoryEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSelection dataSelection)? loadCategories,
    TResult Function(CategoryEntity categoryEntity)? addCategory,
    TResult Function(TransactionEntity transactionEntity)? addTransaction,
    TResult Function(int id)? deleteCategory,
    TResult Function(int id)? deleteTransaction,
    TResult Function(CategoryEntity categoryEntity)? updateCategory,
    TResult Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult Function()? deleteAllData,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(categoryEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCoreCategoriesEvent value) loadCategories,
    required TResult Function(_AddCategoryCoreCategoriesEvent value)
        addCategory,
    required TResult Function(_AddTransactionCoreCategoriesEvent value)
        addTransaction,
    required TResult Function(_DeleteCategoryCoreCategoriesEvent value)
        deleteCategory,
    required TResult Function(_DeleteTransactionCoreCategoriesEvent value)
        deleteTransaction,
    required TResult Function(_UpdateCategoryCoreCategoriesEvent value)
        updateCategory,
    required TResult Function(_UpdateTransactionCoreCategoriesEvent value)
        updateTransaction,
    required TResult Function(_DeleteAllDataCoreCategoriesEvent value)
        deleteAllData,
  }) {
    return updateCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult? Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult? Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult? Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult? Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult? Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult? Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult? Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
  }) {
    return updateCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(this);
    }
    return orElse();
  }
}

abstract class _UpdateCategoryCoreCategoriesEvent extends CoreCategoriesEvent {
  const factory _UpdateCategoryCoreCategoriesEvent(
          {required final CategoryEntity categoryEntity}) =
      _$_UpdateCategoryCoreCategoriesEvent;
  const _UpdateCategoryCoreCategoriesEvent._() : super._();

  CategoryEntity get categoryEntity;
  @JsonKey(ignore: true)
  _$$_UpdateCategoryCoreCategoriesEventCopyWith<
          _$_UpdateCategoryCoreCategoriesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTransactionCoreCategoriesEventCopyWith<$Res> {
  factory _$$_UpdateTransactionCoreCategoriesEventCopyWith(
          _$_UpdateTransactionCoreCategoriesEvent value,
          $Res Function(_$_UpdateTransactionCoreCategoriesEvent) then) =
      __$$_UpdateTransactionCoreCategoriesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionEntity transactionEntity});
}

/// @nodoc
class __$$_UpdateTransactionCoreCategoriesEventCopyWithImpl<$Res>
    extends _$CoreCategoriesEventCopyWithImpl<$Res,
        _$_UpdateTransactionCoreCategoriesEvent>
    implements _$$_UpdateTransactionCoreCategoriesEventCopyWith<$Res> {
  __$$_UpdateTransactionCoreCategoriesEventCopyWithImpl(
      _$_UpdateTransactionCoreCategoriesEvent _value,
      $Res Function(_$_UpdateTransactionCoreCategoriesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionEntity = null,
  }) {
    return _then(_$_UpdateTransactionCoreCategoriesEvent(
      transactionEntity: null == transactionEntity
          ? _value.transactionEntity
          : transactionEntity // ignore: cast_nullable_to_non_nullable
              as TransactionEntity,
    ));
  }
}

/// @nodoc

class _$_UpdateTransactionCoreCategoriesEvent
    extends _UpdateTransactionCoreCategoriesEvent {
  const _$_UpdateTransactionCoreCategoriesEvent(
      {required this.transactionEntity})
      : super._();

  @override
  final TransactionEntity transactionEntity;

  @override
  String toString() {
    return 'CoreCategoriesEvent.updateTransaction(transactionEntity: $transactionEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTransactionCoreCategoriesEvent &&
            (identical(other.transactionEntity, transactionEntity) ||
                other.transactionEntity == transactionEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateTransactionCoreCategoriesEventCopyWith<
          _$_UpdateTransactionCoreCategoriesEvent>
      get copyWith => __$$_UpdateTransactionCoreCategoriesEventCopyWithImpl<
          _$_UpdateTransactionCoreCategoriesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSelection dataSelection) loadCategories,
    required TResult Function(CategoryEntity categoryEntity) addCategory,
    required TResult Function(TransactionEntity transactionEntity)
        addTransaction,
    required TResult Function(int id) deleteCategory,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(CategoryEntity categoryEntity) updateCategory,
    required TResult Function(TransactionEntity transactionEntity)
        updateTransaction,
    required TResult Function() deleteAllData,
  }) {
    return updateTransaction(transactionEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataSelection dataSelection)? loadCategories,
    TResult? Function(CategoryEntity categoryEntity)? addCategory,
    TResult? Function(TransactionEntity transactionEntity)? addTransaction,
    TResult? Function(int id)? deleteCategory,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function(CategoryEntity categoryEntity)? updateCategory,
    TResult? Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult? Function()? deleteAllData,
  }) {
    return updateTransaction?.call(transactionEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSelection dataSelection)? loadCategories,
    TResult Function(CategoryEntity categoryEntity)? addCategory,
    TResult Function(TransactionEntity transactionEntity)? addTransaction,
    TResult Function(int id)? deleteCategory,
    TResult Function(int id)? deleteTransaction,
    TResult Function(CategoryEntity categoryEntity)? updateCategory,
    TResult Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult Function()? deleteAllData,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(transactionEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCoreCategoriesEvent value) loadCategories,
    required TResult Function(_AddCategoryCoreCategoriesEvent value)
        addCategory,
    required TResult Function(_AddTransactionCoreCategoriesEvent value)
        addTransaction,
    required TResult Function(_DeleteCategoryCoreCategoriesEvent value)
        deleteCategory,
    required TResult Function(_DeleteTransactionCoreCategoriesEvent value)
        deleteTransaction,
    required TResult Function(_UpdateCategoryCoreCategoriesEvent value)
        updateCategory,
    required TResult Function(_UpdateTransactionCoreCategoriesEvent value)
        updateTransaction,
    required TResult Function(_DeleteAllDataCoreCategoriesEvent value)
        deleteAllData,
  }) {
    return updateTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult? Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult? Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult? Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult? Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult? Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult? Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult? Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
  }) {
    return updateTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(this);
    }
    return orElse();
  }
}

abstract class _UpdateTransactionCoreCategoriesEvent
    extends CoreCategoriesEvent {
  const factory _UpdateTransactionCoreCategoriesEvent(
          {required final TransactionEntity transactionEntity}) =
      _$_UpdateTransactionCoreCategoriesEvent;
  const _UpdateTransactionCoreCategoriesEvent._() : super._();

  TransactionEntity get transactionEntity;
  @JsonKey(ignore: true)
  _$$_UpdateTransactionCoreCategoriesEventCopyWith<
          _$_UpdateTransactionCoreCategoriesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteAllDataCoreCategoriesEventCopyWith<$Res> {
  factory _$$_DeleteAllDataCoreCategoriesEventCopyWith(
          _$_DeleteAllDataCoreCategoriesEvent value,
          $Res Function(_$_DeleteAllDataCoreCategoriesEvent) then) =
      __$$_DeleteAllDataCoreCategoriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteAllDataCoreCategoriesEventCopyWithImpl<$Res>
    extends _$CoreCategoriesEventCopyWithImpl<$Res,
        _$_DeleteAllDataCoreCategoriesEvent>
    implements _$$_DeleteAllDataCoreCategoriesEventCopyWith<$Res> {
  __$$_DeleteAllDataCoreCategoriesEventCopyWithImpl(
      _$_DeleteAllDataCoreCategoriesEvent _value,
      $Res Function(_$_DeleteAllDataCoreCategoriesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteAllDataCoreCategoriesEvent
    extends _DeleteAllDataCoreCategoriesEvent {
  const _$_DeleteAllDataCoreCategoriesEvent() : super._();

  @override
  String toString() {
    return 'CoreCategoriesEvent.deleteAllData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAllDataCoreCategoriesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSelection dataSelection) loadCategories,
    required TResult Function(CategoryEntity categoryEntity) addCategory,
    required TResult Function(TransactionEntity transactionEntity)
        addTransaction,
    required TResult Function(int id) deleteCategory,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(CategoryEntity categoryEntity) updateCategory,
    required TResult Function(TransactionEntity transactionEntity)
        updateTransaction,
    required TResult Function() deleteAllData,
  }) {
    return deleteAllData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataSelection dataSelection)? loadCategories,
    TResult? Function(CategoryEntity categoryEntity)? addCategory,
    TResult? Function(TransactionEntity transactionEntity)? addTransaction,
    TResult? Function(int id)? deleteCategory,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function(CategoryEntity categoryEntity)? updateCategory,
    TResult? Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult? Function()? deleteAllData,
  }) {
    return deleteAllData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSelection dataSelection)? loadCategories,
    TResult Function(CategoryEntity categoryEntity)? addCategory,
    TResult Function(TransactionEntity transactionEntity)? addTransaction,
    TResult Function(int id)? deleteCategory,
    TResult Function(int id)? deleteTransaction,
    TResult Function(CategoryEntity categoryEntity)? updateCategory,
    TResult Function(TransactionEntity transactionEntity)? updateTransaction,
    TResult Function()? deleteAllData,
    required TResult orElse(),
  }) {
    if (deleteAllData != null) {
      return deleteAllData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCoreCategoriesEvent value) loadCategories,
    required TResult Function(_AddCategoryCoreCategoriesEvent value)
        addCategory,
    required TResult Function(_AddTransactionCoreCategoriesEvent value)
        addTransaction,
    required TResult Function(_DeleteCategoryCoreCategoriesEvent value)
        deleteCategory,
    required TResult Function(_DeleteTransactionCoreCategoriesEvent value)
        deleteTransaction,
    required TResult Function(_UpdateCategoryCoreCategoriesEvent value)
        updateCategory,
    required TResult Function(_UpdateTransactionCoreCategoriesEvent value)
        updateTransaction,
    required TResult Function(_DeleteAllDataCoreCategoriesEvent value)
        deleteAllData,
  }) {
    return deleteAllData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult? Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult? Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult? Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult? Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult? Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult? Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult? Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
  }) {
    return deleteAllData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCoreCategoriesEvent value)? loadCategories,
    TResult Function(_AddCategoryCoreCategoriesEvent value)? addCategory,
    TResult Function(_AddTransactionCoreCategoriesEvent value)? addTransaction,
    TResult Function(_DeleteCategoryCoreCategoriesEvent value)? deleteCategory,
    TResult Function(_DeleteTransactionCoreCategoriesEvent value)?
        deleteTransaction,
    TResult Function(_UpdateCategoryCoreCategoriesEvent value)? updateCategory,
    TResult Function(_UpdateTransactionCoreCategoriesEvent value)?
        updateTransaction,
    TResult Function(_DeleteAllDataCoreCategoriesEvent value)? deleteAllData,
    required TResult orElse(),
  }) {
    if (deleteAllData != null) {
      return deleteAllData(this);
    }
    return orElse();
  }
}

abstract class _DeleteAllDataCoreCategoriesEvent extends CoreCategoriesEvent {
  const factory _DeleteAllDataCoreCategoriesEvent() =
      _$_DeleteAllDataCoreCategoriesEvent;
  const _DeleteAllDataCoreCategoriesEvent._() : super._();
}

/// @nodoc
mixin _$CoreCategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CategoryEntity> categories, DataSelection dataSelection)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<CategoryEntity> categories, DataSelection dataSelection)?
        loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CategoryEntity> categories, DataSelection dataSelection)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCoreCategoriesState value) initial,
    required TResult Function(_LoadingCoreCategoriesState value) loading,
    required TResult Function(_LoadedCoreCategoriesState value) loaded,
    required TResult Function(_ErrorCoreCategoriesState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCoreCategoriesState value)? initial,
    TResult? Function(_LoadingCoreCategoriesState value)? loading,
    TResult? Function(_LoadedCoreCategoriesState value)? loaded,
    TResult? Function(_ErrorCoreCategoriesState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCoreCategoriesState value)? initial,
    TResult Function(_LoadingCoreCategoriesState value)? loading,
    TResult Function(_LoadedCoreCategoriesState value)? loaded,
    TResult Function(_ErrorCoreCategoriesState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreCategoriesStateCopyWith<$Res> {
  factory $CoreCategoriesStateCopyWith(
          CoreCategoriesState value, $Res Function(CoreCategoriesState) then) =
      _$CoreCategoriesStateCopyWithImpl<$Res, CoreCategoriesState>;
}

/// @nodoc
class _$CoreCategoriesStateCopyWithImpl<$Res, $Val extends CoreCategoriesState>
    implements $CoreCategoriesStateCopyWith<$Res> {
  _$CoreCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCoreCategoriesStateCopyWith<$Res> {
  factory _$$_InitialCoreCategoriesStateCopyWith(
          _$_InitialCoreCategoriesState value,
          $Res Function(_$_InitialCoreCategoriesState) then) =
      __$$_InitialCoreCategoriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCoreCategoriesStateCopyWithImpl<$Res>
    extends _$CoreCategoriesStateCopyWithImpl<$Res,
        _$_InitialCoreCategoriesState>
    implements _$$_InitialCoreCategoriesStateCopyWith<$Res> {
  __$$_InitialCoreCategoriesStateCopyWithImpl(
      _$_InitialCoreCategoriesState _value,
      $Res Function(_$_InitialCoreCategoriesState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialCoreCategoriesState extends _InitialCoreCategoriesState {
  const _$_InitialCoreCategoriesState() : super._();

  @override
  String toString() {
    return 'CoreCategoriesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialCoreCategoriesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CategoryEntity> categories, DataSelection dataSelection)
        loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<CategoryEntity> categories, DataSelection dataSelection)?
        loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CategoryEntity> categories, DataSelection dataSelection)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCoreCategoriesState value) initial,
    required TResult Function(_LoadingCoreCategoriesState value) loading,
    required TResult Function(_LoadedCoreCategoriesState value) loaded,
    required TResult Function(_ErrorCoreCategoriesState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCoreCategoriesState value)? initial,
    TResult? Function(_LoadingCoreCategoriesState value)? loading,
    TResult? Function(_LoadedCoreCategoriesState value)? loaded,
    TResult? Function(_ErrorCoreCategoriesState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCoreCategoriesState value)? initial,
    TResult Function(_LoadingCoreCategoriesState value)? loading,
    TResult Function(_LoadedCoreCategoriesState value)? loaded,
    TResult Function(_ErrorCoreCategoriesState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCoreCategoriesState extends CoreCategoriesState {
  const factory _InitialCoreCategoriesState() = _$_InitialCoreCategoriesState;
  const _InitialCoreCategoriesState._() : super._();
}

/// @nodoc
abstract class _$$_LoadingCoreCategoriesStateCopyWith<$Res> {
  factory _$$_LoadingCoreCategoriesStateCopyWith(
          _$_LoadingCoreCategoriesState value,
          $Res Function(_$_LoadingCoreCategoriesState) then) =
      __$$_LoadingCoreCategoriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCoreCategoriesStateCopyWithImpl<$Res>
    extends _$CoreCategoriesStateCopyWithImpl<$Res,
        _$_LoadingCoreCategoriesState>
    implements _$$_LoadingCoreCategoriesStateCopyWith<$Res> {
  __$$_LoadingCoreCategoriesStateCopyWithImpl(
      _$_LoadingCoreCategoriesState _value,
      $Res Function(_$_LoadingCoreCategoriesState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingCoreCategoriesState extends _LoadingCoreCategoriesState {
  const _$_LoadingCoreCategoriesState() : super._();

  @override
  String toString() {
    return 'CoreCategoriesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingCoreCategoriesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CategoryEntity> categories, DataSelection dataSelection)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<CategoryEntity> categories, DataSelection dataSelection)?
        loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CategoryEntity> categories, DataSelection dataSelection)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCoreCategoriesState value) initial,
    required TResult Function(_LoadingCoreCategoriesState value) loading,
    required TResult Function(_LoadedCoreCategoriesState value) loaded,
    required TResult Function(_ErrorCoreCategoriesState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCoreCategoriesState value)? initial,
    TResult? Function(_LoadingCoreCategoriesState value)? loading,
    TResult? Function(_LoadedCoreCategoriesState value)? loaded,
    TResult? Function(_ErrorCoreCategoriesState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCoreCategoriesState value)? initial,
    TResult Function(_LoadingCoreCategoriesState value)? loading,
    TResult Function(_LoadedCoreCategoriesState value)? loaded,
    TResult Function(_ErrorCoreCategoriesState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingCoreCategoriesState extends CoreCategoriesState {
  const factory _LoadingCoreCategoriesState() = _$_LoadingCoreCategoriesState;
  const _LoadingCoreCategoriesState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedCoreCategoriesStateCopyWith<$Res> {
  factory _$$_LoadedCoreCategoriesStateCopyWith(
          _$_LoadedCoreCategoriesState value,
          $Res Function(_$_LoadedCoreCategoriesState) then) =
      __$$_LoadedCoreCategoriesStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryEntity> categories, DataSelection dataSelection});
}

/// @nodoc
class __$$_LoadedCoreCategoriesStateCopyWithImpl<$Res>
    extends _$CoreCategoriesStateCopyWithImpl<$Res,
        _$_LoadedCoreCategoriesState>
    implements _$$_LoadedCoreCategoriesStateCopyWith<$Res> {
  __$$_LoadedCoreCategoriesStateCopyWithImpl(
      _$_LoadedCoreCategoriesState _value,
      $Res Function(_$_LoadedCoreCategoriesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? dataSelection = null,
  }) {
    return _then(_$_LoadedCoreCategoriesState(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      dataSelection: null == dataSelection
          ? _value.dataSelection
          : dataSelection // ignore: cast_nullable_to_non_nullable
              as DataSelection,
    ));
  }
}

/// @nodoc

class _$_LoadedCoreCategoriesState extends _LoadedCoreCategoriesState {
  const _$_LoadedCoreCategoriesState(
      {required final List<CategoryEntity> categories,
      required this.dataSelection})
      : _categories = categories,
        super._();

  final List<CategoryEntity> _categories;
  @override
  List<CategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final DataSelection dataSelection;

  @override
  String toString() {
    return 'CoreCategoriesState.loaded(categories: $categories, dataSelection: $dataSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedCoreCategoriesState &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.dataSelection, dataSelection) ||
                other.dataSelection == dataSelection));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), dataSelection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCoreCategoriesStateCopyWith<_$_LoadedCoreCategoriesState>
      get copyWith => __$$_LoadedCoreCategoriesStateCopyWithImpl<
          _$_LoadedCoreCategoriesState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CategoryEntity> categories, DataSelection dataSelection)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(categories, dataSelection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<CategoryEntity> categories, DataSelection dataSelection)?
        loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(categories, dataSelection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CategoryEntity> categories, DataSelection dataSelection)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(categories, dataSelection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCoreCategoriesState value) initial,
    required TResult Function(_LoadingCoreCategoriesState value) loading,
    required TResult Function(_LoadedCoreCategoriesState value) loaded,
    required TResult Function(_ErrorCoreCategoriesState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCoreCategoriesState value)? initial,
    TResult? Function(_LoadingCoreCategoriesState value)? loading,
    TResult? Function(_LoadedCoreCategoriesState value)? loaded,
    TResult? Function(_ErrorCoreCategoriesState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCoreCategoriesState value)? initial,
    TResult Function(_LoadingCoreCategoriesState value)? loading,
    TResult Function(_LoadedCoreCategoriesState value)? loaded,
    TResult Function(_ErrorCoreCategoriesState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedCoreCategoriesState extends CoreCategoriesState {
  const factory _LoadedCoreCategoriesState(
          {required final List<CategoryEntity> categories,
          required final DataSelection dataSelection}) =
      _$_LoadedCoreCategoriesState;
  const _LoadedCoreCategoriesState._() : super._();

  List<CategoryEntity> get categories;
  DataSelection get dataSelection;
  @JsonKey(ignore: true)
  _$$_LoadedCoreCategoriesStateCopyWith<_$_LoadedCoreCategoriesState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCoreCategoriesStateCopyWith<$Res> {
  factory _$$_ErrorCoreCategoriesStateCopyWith(
          _$_ErrorCoreCategoriesState value,
          $Res Function(_$_ErrorCoreCategoriesState) then) =
      __$$_ErrorCoreCategoriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCoreCategoriesStateCopyWithImpl<$Res>
    extends _$CoreCategoriesStateCopyWithImpl<$Res, _$_ErrorCoreCategoriesState>
    implements _$$_ErrorCoreCategoriesStateCopyWith<$Res> {
  __$$_ErrorCoreCategoriesStateCopyWithImpl(_$_ErrorCoreCategoriesState _value,
      $Res Function(_$_ErrorCoreCategoriesState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ErrorCoreCategoriesState extends _ErrorCoreCategoriesState {
  const _$_ErrorCoreCategoriesState() : super._();

  @override
  String toString() {
    return 'CoreCategoriesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorCoreCategoriesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<CategoryEntity> categories, DataSelection dataSelection)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<CategoryEntity> categories, DataSelection dataSelection)?
        loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<CategoryEntity> categories, DataSelection dataSelection)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCoreCategoriesState value) initial,
    required TResult Function(_LoadingCoreCategoriesState value) loading,
    required TResult Function(_LoadedCoreCategoriesState value) loaded,
    required TResult Function(_ErrorCoreCategoriesState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCoreCategoriesState value)? initial,
    TResult? Function(_LoadingCoreCategoriesState value)? loading,
    TResult? Function(_LoadedCoreCategoriesState value)? loaded,
    TResult? Function(_ErrorCoreCategoriesState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCoreCategoriesState value)? initial,
    TResult Function(_LoadingCoreCategoriesState value)? loading,
    TResult Function(_LoadedCoreCategoriesState value)? loaded,
    TResult Function(_ErrorCoreCategoriesState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorCoreCategoriesState extends CoreCategoriesState {
  const factory _ErrorCoreCategoriesState() = _$_ErrorCoreCategoriesState;
  const _ErrorCoreCategoriesState._() : super._();
}
