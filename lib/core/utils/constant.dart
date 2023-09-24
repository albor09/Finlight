import 'dart:collection';
import 'dart:ui';

import 'package:flutter/material.dart';

class Constant {
  static const List<Currency> supportedExchanges = [
    Currency('US Dollar', 'USD', '\$'),
    Currency('Euro', 'EUR', '€'),
    Currency('円 (En)', 'JPY ', '¥'),
    Currency('Pound Sterling', 'GBP', '£'),
    Currency('Canadian Dollar', 'CAD', '\$'),
    Currency('Российский рубль', 'RUB', '₽'),
  ];

  static const Map<String, String> localeInfo = {
    'en': 'English',
    'ru': 'Русский'
  };

  static const List<Color> colors = [
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
    Colors.cyan,
    Colors.teal,
    Colors.green,
    Colors.lightGreen,
    Colors.lime,
    Colors.yellow,
    Colors.amber,
    Colors.orange,
    Colors.deepOrange,
    Colors.brown,
    Colors.grey,
    Colors.blueGrey,
  ];
}

class Currency {
  final String name;
  final String code;
  final String sign;
  const Currency(
    this.name,
    this.code,
    this.sign,
  );
}
