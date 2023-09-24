import 'package:finance_manager/core/utils/datetime_utils.dart';
import 'package:finance_manager/core/utils/utils.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('category sort', () {
    CategoryEntity category = CategoryEntity(
        id: 0,
        name: 'test',
        color: Colors.red,
        sumInPeriod: 0,
        type: TransactionType.expense);
    List<CategoryEntity> categories = [
      category.copyWith(sumInPeriod: 10),
      category.copyWith(sumInPeriod: 50),
      category.copyWith(sumInPeriod: 5),
      category.copyWith(sumInPeriod: 100),
    ];
    CategoryEntity.sortCategories(categories);
    print(categories);
  });

  test('locale', () {
    expect(LocaleToString(Locale('ru', 'RU')), 'ru_Ru');
    expect(LocaleToString(Locale('en', 'US')), 'en_US');

    print(localeFromString('ru_Ru').countryCode);
  });

  test('Date', () {
    print(DateTimeUtils.getCurrentWeekRange());
    print(DateTimeUtils.getCurrentMonthRange());
    print(DateTimeUtils.getCurrentYearRange());
  });
}
