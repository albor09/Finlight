import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/core/utils/datetime_utils.dart';
import 'package:finance_manager/domain/entities/date_range.dart';
import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:flutter/material.dart';
import 'package:quiver/time.dart';

class DatePickerSheet extends StatefulWidget {
  const DatePickerSheet({super.key});

  @override
  State<DatePickerSheet> createState() => _DatePickerSheetState();
}

class _DatePickerSheetState extends State<DatePickerSheet> {
  final DateTime _now = DateTime.now();
  final List<String> _months = [
    'january',
    'february',
    'march',
    'april',
    'may',
    'june',
    'july',
    'august',
    'september',
    'october',
    'november',
    'december'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 4,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          CLargeTitle(_now.year.toString()),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: MediaQuery.of(context).textScaleFactor * 14 + 20,
            child: ListView.builder(
                itemCount: 12,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    _buildItem(_months[index].tr(), () {
                      DateTime d = DateTime(_now.year, index + 1);
                      Navigator.of(context).pop(CDateRange(
                          start: d.copyWith(day: 1),
                          end: d.copyWith(
                              day: daysInMonth(_now.year, index + 1)),
                          text: _months[index]));
                    })),
          ),
          const SizedBox(height: 16),
          CLargeTitle('current'.tr()),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: MediaQuery.of(context).textScaleFactor * 14 + 20,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildItem('day'.tr(),
                    () => Navigator.of(context).pop(CDateRange.currentDay())),
                _buildItem('week'.tr(),
                    () => Navigator.of(context).pop(CDateRange.currentWeek())),
                _buildItem('month'.tr(),
                    () => Navigator.of(context).pop(CDateRange.currentMonth())),
                _buildItem('year'.tr(),
                    () => Navigator.of(context).pop(CDateRange.currentYear())),
              ],
            ),
          ),
          const SizedBox(height: 32),
          CTextButton(
            text: 'Pick another range',
            onPressed: () {
              Navigator.of(context).pop(CDateRange(start: _now, end: _now));
            },
          ),
        ],
      ),
    );
  }

  Widget _buildItem(String text, void Function()? onPressed) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceVariant,
              borderRadius: BorderRadius.circular(16)),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
