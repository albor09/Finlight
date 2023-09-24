import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/core/app/app.dart';
import 'package:finance_manager/core/locator.dart';
import 'package:flutter/material.dart';

void main() async {
  // runZonedGuarded(() async {

  // }, (error, stack) {
  //   print(error);
  // });
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await setUpLocator();
  runApp(App());
}
