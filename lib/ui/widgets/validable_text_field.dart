import 'package:finance_manager/ui/widgets/validable.dart';
import 'package:flutter/material.dart';

class ValidableTextField extends StatefulWidget {
  const ValidableTextField(
      {required ValidableController validableController,
      required TextEditingController textEditingController,
      super.key})
      : _textEditingController = textEditingController,
        _validableController = validableController;

  final ValidableController _validableController;
  final TextEditingController _textEditingController;

  @override
  State<ValidableTextField> createState() => _ValidableTextFieldState();
}

class _ValidableTextFieldState extends State<ValidableTextField>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    widget._validableController.setOnNotValid(() {
      _controller.forward().whenComplete(() => _controller.reverse());
    });
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.duration = const Duration(milliseconds: 250);
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
        builder: ((context, child) {
          return TextField(
            controller: widget._textEditingController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                      color: Color.lerp(
                          Colors.grey.shade800, Colors.red, _controller.value)!,
                      width: 2)),
            ),
          );
        }));
  }
}
