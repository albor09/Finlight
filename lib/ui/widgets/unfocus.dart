import 'package:flutter/material.dart';

class Unfocus extends StatelessWidget {
  const Unfocus({this.child, super.key});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: child,
    );
  }
}
