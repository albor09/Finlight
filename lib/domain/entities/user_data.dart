import 'package:flutter/material.dart';

import 'package:finance_manager/core/utils/constant.dart';

class UserDataEntity {
  final String name;
  final Currency currency;
  final ThemeMode themeMode;
  UserDataEntity({
    required this.name,
    required this.currency,
    required this.themeMode,
  });

  UserDataEntity copyWith({
    String? name,
    Currency? currency,
    Locale? locale,
    ThemeMode? themeMode,
  }) {
    return UserDataEntity(
      name: name ?? this.name,
      currency: currency ?? this.currency,
      themeMode: themeMode ?? this.themeMode,
    );
  }
}
