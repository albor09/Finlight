import 'package:finance_manager/core/utils/utils.dart';
import 'package:flutter/material.dart';

class GlowingContainer extends StatefulWidget {
  const GlowingContainer(
      {required this.child,
      required this.color,
      this.padding,
      this.borderRadius,
      super.key});

  final Color color;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final Widget child;

  @override
  State<GlowingContainer> createState() => _GlowingContainerState();
}

class _GlowingContainerState extends State<GlowingContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Color endColor;

  @override
  void initState() {
    super.initState();
    endColor = lighten(widget.color, 20);
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _controller.addListener(() {
      switch (_controller.status) {
        case AnimationStatus.completed:
          _controller.reverse();
          break;
        case AnimationStatus.dismissed:
          _controller.forward();
          break;
        case AnimationStatus.forward:
          break;
        case AnimationStatus.reverse:
          break;
      }
    });
    _controller.forward();
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
      builder: (context, value) => Container(
          child: widget.child,
          padding: widget.padding,
          decoration: BoxDecoration(
              borderRadius: widget.borderRadius,
              boxShadow: [
                BoxShadow(
                    spreadRadius: 4,
                    blurRadius: 4,
                    color: Color.lerp(
                        Colors.transparent, widget.color, _controller.value)!)
              ],
              border: Border.all(
                  width: 2,
                  color:
                      Color.lerp(endColor, widget.color, _controller.value)!))),
    );
  }
}
