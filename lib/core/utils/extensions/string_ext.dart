import 'package:flutter/material.dart';

extension StringExt on String {
  bool get isBlank => trim().isEmpty;
  bool get isOnlyDigits => double.tryParse(this) != null;

  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
