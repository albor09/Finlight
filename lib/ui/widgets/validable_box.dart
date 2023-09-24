import 'package:finance_manager/ui/widgets/validable.dart';
import 'package:flutter/material.dart';

class ValidableOutlineBox extends StatefulWidget {
  const ValidableOutlineBox(
      {required ValidableController validableController,
      this.size = 16,
      super.key})
      : _validableController = validableController;

  final ValidableController _validableController;
  final double size;

  @override
  State<ValidableOutlineBox> createState() => _ValidableOutlineBoxState();
}

class _ValidableOutlineBoxState extends State<ValidableOutlineBox>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    widget._validableController.setOnNotValid(() {
      _controller.forward().whenComplete(() => _controller.reverse());
    });
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.duration = const Duration(milliseconds: 500);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return AnimatedBuilder(
            animation: _controller,
            builder: (context, child) => Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2,
                      color: Color.lerp(
                          Colors.transparent, Colors.red, _controller.value)!),
                  borderRadius: BorderRadius.circular(16)),
            ),
          );
        });
  }
}
