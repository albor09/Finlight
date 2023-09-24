import 'dart:io';
import 'package:finance_manager/data/datasources/data_source.dart';
import 'package:finance_manager/data/models/transaction.dart';
import 'package:finance_manager/data/models/category.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class LocalDataSource implements DataSource {
  LocalDataSource({Database? db}) : _database = db;

  Database? _database;

  final _categoryTable = 'category';
  final _transactionTable = 'category_transaction';

  Future<void> init() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "test.db");
    _database = await openDatabase(path,
        version: 1, onOpen: (db) => db, onCreate: _onCreate);
  }

  Future<void> deleteDb() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "test.db");
    await deleteDatabase(path);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE category (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, color TEXT, type TEXT, creation_date INTEGER)');
    await db.execute(
        'CREATE TABLE category_transaction (id INTEGER PRIMARY KEY AUTOINCREMENT, category_id INTEGER, description TEXT, value REAL, date INTEGER, type TEXT, is_regular INTEGER, regular_repeat_time TEXT NULL)');
  }

  @override
  Future<List<CategoryModel>> getAllCategories() async {
    final queryResult =
        await _database!.rawQuery('SELECT * FROM ${_categoryTable}');
    return queryResult.map((e) => CategoryModel.fromMap(e)).toList();
  }

  @override
  Future<List<CategoryModel>> getAllCategoriesWithSum(
      int from, int to, TransactionType categoryType) async {
    final queryResult = await _database!.rawQuery('''
      SELECT c.*, sum(o.value) AS total_sum, COUNT(o.id) AS transactions_count
      FROM ${_categoryTable} c
      LEFT JOIN ${_transactionTable} o ON c.id = o.category_id AND o.date BETWEEN ${from} AND ${to} AND o.type = '${categoryType.name.toString()}'
      WHERE c.creation_date < ${to} AND (c.type = '${categoryType.name}')
      GROUP BY c.id;
      ''');
    return queryResult.map((e) => CategoryModel.fromMap(e)).toList();
  }

  @override
  Future<List<TransactionModel>> getCategoryTransactionsInPeriod(
      int categoryId, int from, int to) async {
    final queryResult = await _database!.rawQuery('''
      SELECT *
      FROM ${_transactionTable} 
      WHERE category_id = ${categoryId} AND date BETWEEN ${from} AND ${to};
      ''');
    return queryResult.map((e) => TransactionModel.fromMap(e)).toList();
  }

  @override
  Future<int> saveCategory(CategoryModel category) async {
    return await _database!.insert(_categoryTable, category.toMap());
  }

  @override
  Future<int> saveTransaction(TransactionModel transaction) async {
    return await _database!.insert(_transactionTable, transaction.toMap());
  }

  @override
  Future<void> removeCategory(int id) async {
    await _database!.delete(_categoryTable, where: 'id = ?', whereArgs: [id]);
  }

  @override
  Future<List<CategoryModel>> getAllCategoriesByType(
      TransactionType transactionType) async {
    final queryResult = await _database!.query(_categoryTable,
        where: 'type = ?', whereArgs: [transactionType.name.toString()]);
    return queryResult.map((e) => CategoryModel.fromMap(e)).toList();
  }

  @override
  Future<void> updateCategory(CategoryModel category) async {
    await _database!.update(_categoryTable, category.toMap(),
        where: 'id = ?', whereArgs: [category.id]);
  }

  @override
  Future<void> deleteAllCategoties() async {
    await _database!.delete(_categoryTable);
  }

  @override
  Future<void> deleteAllTransactions() async {
    await _database!.delete(_transactionTable);
  }
}
