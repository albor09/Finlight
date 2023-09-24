import 'package:finance_manager/core/utils/datetime_utils.dart';
import 'package:flutter/material.dart';

class CDateRange {
  final DateTime start;
  final DateTime end;
  final String? text;
  CDateRange({
    required this.start,
    required this.end,
    this.text,
  });

  factory CDateRange.currentDay() {
    final currentDayRange = DateTimeUtils.getCurrentDayRange();
    return CDateRange(
        start: currentDayRange.start,
        end: currentDayRange.end,
        text: 'current-day');
  }

  factory CDateRange.currentWeek() {
    final currentMothRange = DateTimeUtils.getCurrentWeekRange();
    return CDateRange(
        start: currentMothRange.start,
        end: currentMothRange.end,
        text: 'current-week');
  }

  factory CDateRange.currentMonth() {
    final currentMothRange = DateTimeUtils.getCurrentMonthRange();
    return CDateRange(
        start: currentMothRange.start,
        end: currentMothRange.end,
        text: 'current-month');
  }
  factory CDateRange.currentYear() {
    final currentMothRange = DateTimeUtils.getCurrentYearRange();
    return CDateRange(
        start: currentMothRange.start,
        end: currentMothRange.end,
        text: 'current-year');
  }

  DateTimeRange toDateTimeRange() {
    return DateTimeRange(start: start, end: end);
  }
}
