import 'dart:convert';
import 'dart:ui';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/domain/entities/transaction.dart';

class CategoryModel {
  final int id;
  final String name;
  final String color;
  final String type;
  final int creationDate;
  final double sumInPeriod;
  final int transactionsInPeriod;
  CategoryModel(
      {required this.id,
      required this.name,
      required this.color,
      required this.type,
      required this.creationDate,
      required this.sumInPeriod,
      required this.transactionsInPeriod});

  Map<String, Object?> toMap() {
    return {
      'name': name,
      'color': color,
      'creation_date': creationDate,
      'type': type
    };
  }

  factory CategoryModel.fromMap(Map<String, Object?> map) {
    return CategoryModel(
        id: map['id'] as int,
        name: map['name'] as String,
        color: map['color'] as String,
        type: map['type'] as String,
        creationDate: map['creation_date'] as int,
        sumInPeriod: map['total_sum'] != null ? map['total_sum'] as double : 0,
        transactionsInPeriod: map['transactions_count'] != null
            ? map['transactions_count'] as int
            : 0);
  }

  factory CategoryModel.fromEntity(CategoryEntity categoryEntity) {
    return CategoryModel(
        id: categoryEntity.id,
        name: categoryEntity.name,
        color: categoryEntity.color.value.toRadixString(16),
        type: categoryEntity.type.name.toString(),
        creationDate: categoryEntity.creationDate.millisecondsSinceEpoch,
        sumInPeriod: categoryEntity.sumInPeriod,
        transactionsInPeriod: categoryEntity.transactionsInPeriod);
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source));

  CategoryEntity toEntity() {
    return CategoryEntity(
        id: id,
        name: name,
        color: Color(int.parse(color, radix: 16)),
        type: TransactionType.values
            .firstWhere((element) => element.name.toString() == type),
        creationDate: DateTime.fromMillisecondsSinceEpoch(creationDate),
        sumInPeriod: sumInPeriod,
        transactionsInPeriod: transactionsInPeriod);
  }
}
