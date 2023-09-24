import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryEditItem extends StatelessWidget {
  const CategoryEditItem({required this.category, super.key});

  final CategoryEntity category;

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
                  Text(
                    category.type.name.tr(),
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            FaIcon(
              FontAwesomeIcons.chevronRight,
              color: Colors.grey.shade700,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
