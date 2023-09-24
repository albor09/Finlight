import 'package:finance_manager/domain/entities/transaction.dart';

abstract class TransactionRepository {
  Future<List<TransactionEntity>> getCategoryTransactionsInPeriod(
      int categoryId, DateTime from, DateTime to);
  Future<TransactionEntity> saveTransaction(TransactionEntity transaction);
  Future<void> deleteAllTransactions();
}
