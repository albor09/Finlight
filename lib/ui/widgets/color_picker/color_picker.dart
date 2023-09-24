import 'package:finance_manager/core/utils/utils.dart';
import 'package:finance_manager/ui/widgets/color_picker/color_picker_controller.dart';
import 'package:flutter/material.dart';

class CColorPicker extends StatefulWidget {
  const CColorPicker(
      {required this.colors,
      required this.controller,
      required this.onColorSelcted,
      super.key});

  final List<Color> colors;
  final Function(Color) onColorSelcted;
  final ColorPickerController controller;

  @override
  State<CColorPicker> createState() => _CColorPickerState();
}

class _CColorPickerState extends State<CColorPicker> {
  Color? _selectedColor;

  @override
  void initState() {
    widget.controller.addOnSetColor(() {
      setState(() {
        _selectedColor = widget.controller.color;
      });
    });
    setState(() {
      _selectedColor = widget.controller.color;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.colors.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedColor = widget.colors[index];
                });
                widget.controller.color = widget.colors[index];
                widget.onColorSelcted(widget.colors[index]);
              },
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    border: isColorsEqual(_selectedColor ?? Colors.transparent,
                            widget.colors[index])
                        ? Border.all(
                            color: Theme.of(context).colorScheme.onBackground,
                            width: 2)
                        : null,
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      widget.colors[index],
                      lighten(widget.colors[index], 20)
                    ])),
              ),
            ),
          );
        },
      ),
    );
  }

  bool isColorsEqual(Color c1, Color c2) {
    return c1.value == c2.value;
  }
}
