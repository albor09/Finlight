import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:flutter/material.dart';

class FinTypePicker extends StatefulWidget {
  const FinTypePicker(
      {this.onChoose, this.initialType = TransactionType.expense, super.key});

  final void Function(TransactionType transactionType)? onChoose;
  final TransactionType initialType;

  @override
  State<FinTypePicker> createState() => _FinTypePickerState();
}

class _FinTypePickerState extends State<FinTypePicker> {
  late TransactionType selectedType;

  @override
  void initState() {
    selectedType = widget.initialType;
    widget.onChoose?.call(selectedType);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).colorScheme.surface;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
          color: themeColor, borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(TransactionType.values.length, (index) {
          TransactionType currentType = TransactionType.values[index];
          return GestureDetector(
            onTap: () {
              if (selectedType == currentType) return;
              setState(() {
                selectedType = currentType;
              });
              widget.onChoose?.call(currentType);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: selectedType == currentType ? themeColor : null),
              child: Text(
                currentType.name.toString(),
                style: TextStyle(fontSize: 18),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
