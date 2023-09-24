import 'package:flutter/material.dart';
import 'package:quiver/time.dart';

class DateTimeUtils {
  static DateTimeRange getCurrentDayRange() {
    final now = DateTime.now();
    return DateTimeRange(
        start: now.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0),
        end: now.copyWith(hour: 23, minute: 59, second: 59, millisecond: 999));
  }

  static DateTimeRange getCurrentWeekRange() {
    final now = DateTime.now().copyWith(
        hour: 0, minute: 0, second: 0, microsecond: 0, millisecond: 0);
    return DateTimeRange(
        start: now.subtract(Duration(days: now.weekday - 1)),
        end: now
            .add(Duration(days: 7 - now.weekday))
            .copyWith(hour: 23, minute: 59, second: 59));
  }

  static DateTimeRange getCurrentMonthRange() {
    final nowMonth = DateTime.now().copyWith(
        day: 1, hour: 0, minute: 0, second: 0, microsecond: 0, millisecond: 0);
    return DateTimeRange(
        start: nowMonth,
        end: nowMonth
            .add(Duration(days: daysInMonth(nowMonth.year, nowMonth.month) - 1))
            .copyWith(hour: 23, minute: 59, second: 59));
  }

  static DateTimeRange getCurrentYearRange() {
    final now = DateTime.now().copyWith(
        month: 1,
        day: 1,
        hour: 0,
        minute: 0,
        second: 0,
        microsecond: 0,
        millisecond: 0);
    return DateTimeRange(
        start: now,
        end:
            now.copyWith(year: now.year + 1, hour: 23, minute: 59, second: 59));
  }

  static bool isDateInRange(DateTimeRange range, DateTime date) {
    return range.start.isBefore(date) && range.end.isAfter(date);
  }
}
