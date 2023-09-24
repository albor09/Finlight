import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:finance_manager/domain/entities/transaction.dart';

class CategoryEntity extends Equatable implements Comparable<CategoryEntity> {
  final int id;
  final String name;
  final Color color;
  final TransactionType type;
  final DateTime creationDate;
  final double sumInPeriod;
  final int transactionsInPeriod;
  CategoryEntity(
      {required this.id,
      required this.name,
      required this.color,
      required this.type,
      DateTime? creationDate,
      double? sumInPeriod,
      int? transactionsInPeriod})
      : this.creationDate = creationDate ?? DateTime.now(),
        this.sumInPeriod = sumInPeriod ?? 0,
        this.transactionsInPeriod = transactionsInPeriod ?? 0;

  CategoryEntity copyWith(
      {int? id,
      String? name,
      Color? color,
      TransactionType? type,
      DateTime? creationDate,
      double? sumInPeriod,
      int? transactionsInPeriod}) {
    return CategoryEntity(
        id: id ?? this.id,
        name: name ?? this.name,
        color: color ?? this.color,
        type: type ?? this.type,
        creationDate: creationDate ?? this.creationDate,
        sumInPeriod: sumInPeriod ?? this.sumInPeriod,
        transactionsInPeriod:
            transactionsInPeriod ?? this.transactionsInPeriod);
  }

  static double getCategoriesSum(List<CategoryEntity> categories) {
    return categories.fold(
        0.0, (previousValue, element) => previousValue + element.sumInPeriod);
  }

  static void sortCategories(List<CategoryEntity> categories) {
    categories.sort((a, b) => b.sumInPeriod.compareTo(a.sumInPeriod));
  }

  CategoryEntity updateCategory(double value) {
    return copyWith(
        transactionsInPeriod: transactionsInPeriod + 1,
        sumInPeriod: sumInPeriod + value);
  }

  @override
  List<Object?> get props => [id, name, color, creationDate, sumInPeriod];

  @override
  bool? get stringify => true;

  @override
  int compareTo(CategoryEntity other) {
    return other.sumInPeriod.compareTo(sumInPeriod);
  }
}
