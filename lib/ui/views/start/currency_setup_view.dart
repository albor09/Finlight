import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/core/utils/constant.dart';
import 'package:finance_manager/core/utils/utils.dart';
import 'package:finance_manager/domain/entities/user_data.dart';
import 'package:finance_manager/ui/bloc/userdata_bloc/userdata_bloc.dart';
import 'package:finance_manager/ui/views/home/home_view.dart';
import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:finance_manager/ui/widgets/validable.dart';
import 'package:finance_manager/ui/widgets/validable_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcaseview/showcaseview.dart';

class CurrencySetupView extends StatefulWidget {
  const CurrencySetupView({required this.name, super.key});

  final String name;

  @override
  State<CurrencySetupView> createState() => _CurrencySetupViewState();
}

class _CurrencySetupViewState extends State<CurrencySetupView> {
  int _selectedCurrencyInd = -1;
  final ValidableController _validableController = ValidableController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const PopBtn(),
        title: CLargeTitle('choose-cur'.tr()),
      ),
      body: CSafeScreen(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: const Text(
                'start-cur-cannot-changed',
                style: TextStyle(color: Colors.red),
              ).tr(),
            ),
            Flexible(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CSurface(
                    child: ListView.builder(
                      itemCount: Constant.supportedExchanges.length,
                      itemBuilder: (context, index) =>
                          _buildItem(Constant.supportedExchanges[index], index),
                    ),
                  ),
                  Positioned.fill(
                      child: IgnorePointer(
                    child: ValidableOutlineBox(
                      validableController: _validableController,
                    ),
                  )),
                  BlocListener<UserDataBloc, UserDataState>(
                      child: Container(),
                      listener: (context, state) {
                        if (state.getUserData != null) {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => ShowCaseWidget(
                                      builder: Builder(
                                          builder: (context) => const HomeView(
                                              isFirstTime: true)))),
                              (r) => false);
                        }
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: WideButton(
            onPressed: () {
              if (_selectedCurrencyInd == -1) {
                _validableController.animateNotValid();
                return;
              }

              context.read<UserDataBloc>().add(UserDataEvent.set(
                  userData: UserDataEntity(
                      name: widget.name,
                      currency:
                          Constant.supportedExchanges[_selectedCurrencyInd],
                      themeMode: ThemeMode.dark)));
            },
            text: 'continue'.tr()),
      ),
      resizeToAvoidBottomInset: false,
    );
  }

  _buildItem(Currency exchange, int index) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        setState(() {
          _selectedCurrencyInd = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Constant.supportedExchanges[index].code,
                  style: TextStyle(
                      fontSize: 18,
                      color: index == _selectedCurrencyInd
                          ? Colors.blue
                          : Colors.white),
                ),
                Text(
                  Constant.supportedExchanges[index].name,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
            Text(
              Constant.supportedExchanges[index].sign,
              style: const TextStyle(
                fontSize: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
