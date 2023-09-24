import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/core/utils/extensions/string_ext.dart';
import 'package:finance_manager/ui/bloc/userdata_bloc/userdata_bloc.dart';
import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:finance_manager/ui/widgets/unfocus.dart';
import 'package:finance_manager/ui/widgets/validable.dart';
import 'package:finance_manager/ui/widgets/validable_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeNameView extends StatefulWidget {
  const ChangeNameView({super.key});

  @override
  State<ChangeNameView> createState() => _ChangeNameViewState();
}

class _ChangeNameViewState extends State<ChangeNameView> {
  final TextEditingController _nameTextController = TextEditingController();
  final ValidableController _nameValidableController = ValidableController();

  @override
  void initState() {
    _nameTextController.text =
        context.read<UserDataBloc>().state.getUserData!.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: Scaffold(
        appBar: AppBar(
          leading: const PopBtn(),
          title: CLargeTitle('name'.tr()),
        ),
        body: CSafeScreen(
            child: Stack(
          children: [
            TextField(
              controller: _nameTextController,
            ),
            Positioned.fill(
                child: IgnorePointer(
              child: ValidableOutlineBox(
                validableController: _nameValidableController,
              ),
            )),
            BlocListener<UserDataBloc, UserDataState>(
              listener: (context, state) {
                Navigator.of(context).pop();
              },
              child: const SizedBox(),
            )
          ],
        )),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: WideButton(
            onPressed: () {
              if (_nameTextController.text.isBlank) {
                _nameValidableController.animateNotValid();
                return;
              }
              context.read<UserDataBloc>().add(
                  UserDataEvent.setWith(name: _nameTextController.text.trim()));
            },
            text: 'save'.tr(),
          ),
        ),
      ),
    );
  }
}
