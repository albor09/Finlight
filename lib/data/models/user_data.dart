import 'dart:convert';

import 'package:finance_manager/core/utils/constant.dart';
import 'package:finance_manager/core/utils/utils.dart';
import 'package:finance_manager/domain/entities/user_data.dart';
import 'package:flutter/material.dart';

class UserDataModel {
  final String name;
  final int currencyInd;
  final String themeMode;
  UserDataModel({
    required this.name,
    required this.currencyInd,
    required this.themeMode,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'currency': currencyInd});
    result.addAll({'themeMode': themeMode});

    return result;
  }

  factory UserDataModel.fromMap(Map<String, dynamic> map) {
    return UserDataModel(
      name: map['name'],
      currencyInd: map['currency'],
      themeMode: map['themeMode'],
    );
  }

  UserDataEntity toEntity() {
    return UserDataEntity(
        name: name,
        currency: Constant.supportedExchanges[currencyInd],
        themeMode: themeMode == 'dark' ? ThemeMode.dark : ThemeMode.light);
  }

  factory UserDataModel.fromEntity(UserDataEntity entity) {
    return UserDataModel(
        name: entity.name,
        currencyInd: Constant.supportedExchanges
            .indexWhere((element) => element.code == entity.currency.code),
        themeMode: entity.themeMode == ThemeMode.dark ? 'dark' : 'light');
  }

  String toJson() => json.encode(toMap());

  factory UserDataModel.fromJson(String source) =>
      UserDataModel.fromMap(json.decode(source));
}
