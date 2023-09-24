import 'dart:convert';
import 'package:finance_manager/domain/entities/transaction.dart';

class TransactionModel {
  final int id;
  final int categoryId;
  final String description;
  final double value;
  final int date;
  final String type;
  final int isRegular;
  final String? repeatTime;
  TransactionModel(
      {required this.id,
      required this.categoryId,
      required this.description,
      required this.value,
      required this.date,
      required this.type,
      required this.isRegular,
      this.repeatTime});

  Map<String, Object?> toMap() {
    return {
      'category_id': categoryId,
      'description': description,
      'value': value,
      'date': date,
      'type': type,
      'is_regular': isRegular,
      'regular_repeat_time': repeatTime
    };
  }

  factory TransactionModel.fromMap(Map<String, Object?> map) {
    return TransactionModel(
        id: map['id'] as int,
        categoryId: map['category_id'] as int,
        description: map['description'] as String,
        value: map['value'] as double,
        date: map['date'] as int,
        type: map['type'] as String,
        isRegular: map['is_regular'] as int,
        repeatTime: map['regular_repeat_time'] != null
            ? map['regular_repeat_time'] as String
            : null);
  }

  factory TransactionModel.fromEntity(TransactionEntity entity) {
    return TransactionModel(
        id: entity.id,
        categoryId: entity.categoryId,
        description: entity.description,
        value: entity.value,
        date: entity.date.millisecondsSinceEpoch,
        type: entity.type.name.toString(),
        isRegular: entity.isRegular ? 1 : 0);
  }

  String toJson() => json.encode(toMap());

  factory TransactionModel.fromJson(String source) =>
      TransactionModel.fromMap(json.decode(source));

  TransactionEntity toEntity() => TransactionEntity(
      id: id,
      categoryId: categoryId,
      description: description,
      value: value,
      date: DateTime.fromMillisecondsSinceEpoch(date),
      type: TransactionType.values.byName(type),
      isRegular: isRegular == 1 ? true : false);
}
