import 'package:finance_manager/ui/views/settings/language_view.dart';
import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:finance_manager/ui/widgets/validable.dart';
import 'package:finance_manager/ui/widgets/validable_dot.dart';
import 'package:finance_manager/ui/widgets/validable_text_field.dart';
import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LanguageView()));
          },
          child: Text('qwe'),
        ),
      ),
    );
  }
}
