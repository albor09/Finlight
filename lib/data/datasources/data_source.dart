import 'package:finance_manager/data/models/category.dart';
import 'package:finance_manager/data/models/transaction.dart';
import 'package:finance_manager/domain/entities/transaction.dart';

abstract class DataSource {
  Future<List<CategoryModel>> getAllCategories();
  Future<List<CategoryModel>> getAllCategoriesByType(
      TransactionType transactionType);
  Future<List<CategoryModel>> getAllCategoriesWithSum(
      int from, int to, TransactionType categoryType);
  Future<List<TransactionModel>> getCategoryTransactionsInPeriod(
      int categoryId, int from, int to);
  Future<int> saveCategory(CategoryModel category);
  Future<void> removeCategory(int id);
  Future<void> updateCategory(CategoryModel category);
  Future<int> saveTransaction(TransactionModel transaction);
  Future<void> deleteAllCategoties();
  Future<void> deleteAllTransactions();
}
