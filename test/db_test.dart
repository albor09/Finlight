import 'dart:math';

import 'package:finance_manager/core/locator.dart';
import 'package:finance_manager/data/datasources/data_source.dart';
import 'package:finance_manager/data/datasources/local_data_source.dart';
import 'package:finance_manager/data/repositories/category_repository.dart';
import 'package:finance_manager/data/repositories/transaction_repository.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  sqlEfiInit();

  late LocalDataSource dataSource;
  late CategoryRepositoryImp categoryRepository;
  late TransactionRepositoryImp transactionRepository;

  final categoryTable = 'category';
  final transactionTable = 'category_transaction';

  String categoryCreateTable =
      'CREATE TABLE ${categoryTable} (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, color TEXT, type TEXT, creation_date INTEGER)';
  String transactionCreateTable =
      'CREATE TABLE ${transactionTable} (id INTEGER PRIMARY KEY AUTOINCREMENT, category_id INTEGER, description TEXT, value REAL, date INTEGER, type TEXT, is_regular INTEGER, regular_repeat_time TEXT NULL)';

  test('db create', () async {
    var db = await openDatabase(inMemoryDatabasePath);
    await db.execute(categoryCreateTable);
    await db.execute(transactionCreateTable);
    dataSource = LocalDataSource(db: db);
    categoryRepository = CategoryRepositoryImp(localDataSource: dataSource);
    transactionRepository =
        TransactionRepositoryImp(localDataSource: dataSource);
  });

  test('db insert', () async {
    final categories = List.generate(
        1,
        (index) => CategoryEntity(
            id: 0,
            name: index.toString(),
            color: Colors.red,
            type: TransactionType.expense));

    for (var i = 0; i < categories.length; i++) {
      await categoryRepository.saveCategory(categories[i]);
    }
  });

  // test('db select', () async {
  //   DateTime from = DateTime.now().subtract(const Duration(days: 1));
  //   DateTime to = DateTime.now().add(const Duration(days: 1));
  //   DateTimeRange range = DateTimeRange(start: from, end: to);
  //   final data = await categoryRepository.getCategoriesInRange(
  //       range, TransactionType.expense);
  //   for (var element in data) {
  //     print(element);
  //   }
  // });

  test('db table size', () async {
    final now = DateTime.now();
    var db = await openDatabase(inMemoryDatabasePath);
    await db.execute(transactionCreateTable);
    transactionRepository =
        TransactionRepositoryImp(localDataSource: LocalDataSource(db: db));
    final transactions = List.generate(
        1,
        (index) => TransactionEntity(
            id: 0,
            categoryId: 1,
            description: index.toString(),
            value: index * 10,
            date: now,
            type: TransactionType.expense));

    for (var i = 0; i < transactions.length; i++) {
      await transactionRepository.saveTransaction(transactions[i]);
    }
    print(await db.rawQuery(
        'SELECT SUM("pgsize") FROM "dbstat" WHERE name=\'${transactionTable}\''));
  });
}

void sqlEfiInit() {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
}
