import 'package:equatable/equatable.dart';

enum TransactionType { income, expense }

enum RegularRepeatTime { everyDay, everyWeek, everyMonth }

class TransactionEntity extends Equatable {
  final int id;
  final int categoryId;
  final String description;
  final double value;
  final DateTime date;
  final TransactionType type;
  final bool isRegular;
  final RegularRepeatTime? repeatTime;
  TransactionEntity({
    required this.id,
    required this.categoryId,
    required this.description,
    required this.value,
    required this.date,
    required this.type,
    this.isRegular = false,
    this.repeatTime,
  });

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, categoryId, description, value, date, type, isRegular, repeatTime];

  @override
  // TODO: implement stringify
  bool? get stringify => true;

  TransactionEntity copyWith({
    int? id,
    int? categoryId,
    String? description,
    double? value,
    DateTime? date,
    TransactionType? type,
    bool? isRegular,
    RegularRepeatTime? repeatTime,
  }) {
    return TransactionEntity(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      description: description ?? this.description,
      value: value ?? this.value,
      date: date ?? this.date,
      type: type ?? this.type,
      isRegular: isRegular ?? this.isRegular,
      repeatTime: repeatTime ?? this.repeatTime,
    );
  }
}
