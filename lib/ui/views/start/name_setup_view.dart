import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/core/utils/extensions/string_ext.dart';
import 'package:finance_manager/ui/views/start/currency_setup_view.dart';
import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:finance_manager/ui/widgets/unfocus.dart';
import 'package:finance_manager/ui/widgets/validable.dart';
import 'package:finance_manager/ui/widgets/validable_box.dart';
import 'package:flutter/material.dart';

class NameSetupView extends StatefulWidget {
  const NameSetupView({super.key});

  @override
  State<NameSetupView> createState() => _NameSetupViewState();
}

class _NameSetupViewState extends State<NameSetupView> {
  final TextEditingController _nameTextController = TextEditingController();
  final ValidableController _nameValidableController = ValidableController();

  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: Scaffold(
        appBar: AppBar(
          leading: const PopBtn(),
          title: FittedBox(
            fit: BoxFit.fitWidth,
            child: CLargeTitle('how-call'.tr()),
          ),
        ),
        body: CSafeScreen(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  TextField(
                    controller: _nameTextController,
                  ),
                  Positioned.fill(
                      child: IgnorePointer(
                    child: ValidableOutlineBox(
                      validableController: _nameValidableController,
                    ),
                  ))
                ],
              ),
              Expanded(child: Container()),
              WideButton(
                  onPressed: () {
                    if (_nameTextController.text.isBlank) {
                      _nameValidableController.animateNotValid();
                      return;
                    }
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CurrencySetupView(
                        name: _nameTextController.text.trim(),
                      ),
                    ));
                  },
                  text: 'continue'.tr())
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
