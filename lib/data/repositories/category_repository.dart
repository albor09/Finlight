import 'package:finance_manager/core/locator.dart';
import 'package:finance_manager/data/datasources/local_data_source.dart';
import 'package:finance_manager/data/models/category.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:finance_manager/domain/repositories/category_repository.dart';
import 'package:flutter/material.dart';

class CategoryRepositoryImp implements CategoryRepository {
  CategoryRepositoryImp({LocalDataSource? localDataSource})
      : _localDataSource = localDataSource ?? locator.get<LocalDataSource>();

  final LocalDataSource _localDataSource;

  @override
  Future<List<CategoryEntity>> getAllCategories() async {
    final categoryModels = await _localDataSource.getAllCategories();
    return categoryModels.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<CategoryEntity>> getCategoriesInRange(
      DateTimeRange range, TransactionType type) async {
    final categoryModels = await _localDataSource.getAllCategoriesWithSum(
        range.start.millisecondsSinceEpoch,
        range.end.millisecondsSinceEpoch,
        type);
    return categoryModels.map((e) => e.toEntity()).toList();
  }

  @override
  Future<CategoryEntity> saveCategory(CategoryEntity category) async {
    final newCategoryId =
        await _localDataSource.saveCategory(CategoryModel.fromEntity(category));
    return category.copyWith(id: newCategoryId, sumInPeriod: 0);
  }

  @override
  Future<void> removeCategory(int id) async {
    await _localDataSource.removeCategory(id);
    return Future.value();
  }

  @override
  Future<List<CategoryEntity>> getAllCategoriesByType(
      TransactionType transactionType) async {
    final categoryModels =
        await _localDataSource.getAllCategoriesByType(transactionType);
    return categoryModels.map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> updateCategory(CategoryEntity category) async {
    await _localDataSource.updateCategory(CategoryModel.fromEntity(category));
  }

  @override
  Future<void> deleteAllCategories() async {
    await _localDataSource.deleteAllCategoties();
  }
}
