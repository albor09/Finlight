import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/core/utils/utils.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:flutter/material.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem(
      {required this.category, required this.currencySign, super.key});

  final CategoryEntity category;
  final String currencySign;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 4,
              decoration: BoxDecoration(
                  color: category.color,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16))),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          category.name,
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        cutToInteger(category.sumInPeriod) + currencySign,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const Text(
                    'transaction-pl',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ).plural(category.transactionsInPeriod)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
