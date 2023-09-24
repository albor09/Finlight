import 'package:finance_manager/core/utils/datetime_utils.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/domain/entities/date_range.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:flutter/material.dart';

class DataSelection {
  final CDateRange range;
  final TransactionType categoryType;
  DataSelection({
    required this.range,
    required this.categoryType,
  });

  bool isCategoryMatch(CategoryEntity? categoryEntity) {
    if (categoryEntity == null) return false;
    return categoryEntity.type == categoryType &&
        categoryEntity.creationDate.isBefore(range.end);
  }

  bool isTransactionMatch(TransactionEntity? transactionEntity) {
    if (transactionEntity == null) return false;
    return transactionEntity.type == categoryType &&
        DateTimeUtils.isDateInRange(
            range.toDateTimeRange(), transactionEntity.date);
  }

  DataSelection copyWith({
    CDateRange? range,
    TransactionType? categoryType,
  }) {
    return DataSelection(
      range: range ?? this.range,
      categoryType: categoryType ?? this.categoryType,
    );
  }
}
