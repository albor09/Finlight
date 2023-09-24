import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem(
      {this.icon,
      required this.text,
      this.value,
      this.textColor,
      this.iconColor = Colors.blue,
      this.onPressed,
      super.key});

  final void Function()? onPressed;
  final IconData? icon;
  final String text;
  final String? value;
  final Color iconColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 36, child: FaIcon(icon)),
          const SizedBox(width: 8),
          CSmallTitle(text),
          const SizedBox(width: 8),
          Expanded(
              child: value != null
                  ? Text(value!,
                      softWrap: false,
                      textAlign: TextAlign.end,
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade700,
                      ))
                  : const SizedBox())
        ],
      ),
    );
  }
}
