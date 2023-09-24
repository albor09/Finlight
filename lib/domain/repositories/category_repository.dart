import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:flutter/material.dart';

abstract class CategoryRepository {
  Future<List<CategoryEntity>> getAllCategories();
  Future<List<CategoryEntity>> getAllCategoriesByType(
      TransactionType transactionType);
  Future<List<CategoryEntity>> getCategoriesInRange(
      DateTimeRange range, TransactionType type);

  Future<CategoryEntity> saveCategory(CategoryEntity category);
  Future<void> updateCategory(CategoryEntity category);
  Future<void> removeCategory(int id);
  Future<void> deleteAllCategories();
}
