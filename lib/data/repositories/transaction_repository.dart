import 'package:finance_manager/core/locator.dart';
import 'package:finance_manager/data/datasources/local_data_source.dart';
import 'package:finance_manager/data/models/transaction.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:finance_manager/domain/repositories/transaction_repository.dart';

class TransactionRepositoryImp implements TransactionRepository {
  TransactionRepositoryImp({LocalDataSource? localDataSource})
      : _localDataSource = localDataSource ?? locator.get<LocalDataSource>();

  final LocalDataSource _localDataSource;

  @override
  Future<List<TransactionEntity>> getCategoryTransactionsInPeriod(
      int categoryId, DateTime from, DateTime to) async {
    final transactionModels =
        await _localDataSource.getCategoryTransactionsInPeriod(
            categoryId, from.millisecondsSinceEpoch, to.millisecondsSinceEpoch);
    return transactionModels.map((e) => e.toEntity()).toList();
  }

  @override
  Future<TransactionEntity> saveTransaction(
      TransactionEntity transaction) async {
    final newTransactionId = await _localDataSource
        .saveTransaction(TransactionModel.fromEntity(transaction));
    return transaction.copyWith(id: newTransactionId);
  }

  @override
  Future<void> deleteAllTransactions() async {
    await _localDataSource.deleteAllTransactions();
  }
}
