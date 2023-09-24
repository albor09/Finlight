import 'package:finance_manager/ui/widgets/validable.dart';
import 'package:flutter/material.dart';

class ValidableDot extends StatefulWidget {
  const ValidableDot(
      {required ValidableController validableController,
      this.size = 16,
      super.key})
      : _validableController = validableController;

  final ValidableController _validableController;
  final double size;

  @override
  State<ValidableDot> createState() => _ValidableDotState();
}

class _ValidableDotState extends State<ValidableDot>
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
          return Container(
            width: widget.size,
            height: widget.size,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:
                  Color.lerp(Colors.transparent, Colors.red, _controller.value),
            ),
          );
        });
  }
}
