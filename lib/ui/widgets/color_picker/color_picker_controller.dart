import 'dart:ui';

class ColorPickerController {
  Color? get color => _color;
  set color(Color? value) {
    _color = value;
    _onSetColor?.call();
  }

  Color? _color;

  void Function()? _onSetColor;

  void addOnSetColor(void Function()? onSetColor) {
    _onSetColor = onSetColor;
  }
}
