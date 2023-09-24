import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:showcaseview/showcaseview.dart';

class CSafeScreen extends StatelessWidget {
  const CSafeScreen(
      {this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      this.child,
      super.key});

  final Widget? child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}

class CSmallTitle extends StatelessWidget {
  const CSmallTitle(this.text, {this.color, super.key});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: color),
    );
  }
}

class CLargeTitle extends StatelessWidget {
  const CLargeTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        overflow: TextOverflow.fade,
      ),
    );
  }
}

class PopBtn extends StatelessWidget {
  const PopBtn({this.bottomMargin = 32, super.key});

  final double bottomMargin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          Navigator.of(context).pop();
        },
        child: const Center(
          child: FaIcon(FontAwesomeIcons.arrowLeftLong),
        ));
  }
}

class CSurface extends StatelessWidget {
  const CSurface(
      {this.width,
      this.height,
      this.padding = const EdgeInsets.all(8),
      this.child,
      super.key});

  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).colorScheme.surface),
      child: child,
    );
  }
}

class CTextButton extends StatelessWidget {
  const CTextButton({required this.text, required this.onPressed, super.key});

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Text(text,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.primary)),
    );
  }
}

class WideButton extends StatelessWidget {
  const WideButton({required this.onPressed, required this.text, super.key});

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 15,
        child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              text,
            )));
  }
}

class FaIconButton extends StatelessWidget {
  const FaIconButton(this.icon, {this.size, this.color, this.onTap, super.key});

  final IconData icon;
  final void Function()? onTap;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: FaIcon(
        icon,
        size: size,
        color: color,
      ),
    );
  }
}

class CShowcase extends StatelessWidget {
  const CShowcase(
      {required this.description,
      required this.showCaseKey,
      required this.child,
      super.key});

  final GlobalKey showCaseKey;
  final String description;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Showcase(
      description: description,
      key: showCaseKey,
      showArrow: false,
      scaleAnimationDuration: const Duration(milliseconds: 250),
      scaleAnimationAlignment: Alignment.center,
      tooltipBackgroundColor: Theme.of(context).colorScheme.surface,
      textColor: Theme.of(context).colorScheme.onSurface,
      movingAnimationDuration: Duration.zero,
      child: child,
    );
  }
}
