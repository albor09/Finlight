import 'dart:io';
import 'dart:ui';

Color lighten(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100);
  var p = percent / 100;
  return Color.fromARGB(
      c.alpha,
      c.red + ((255 - c.red) * p).round(),
      c.green + ((255 - c.green) * p).round(),
      c.blue + ((255 - c.blue) * p).round());
}

DateTime startOfCurrentMonth() {
  return DateTime.now().copyWith(
      day: 1, hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0);
}

String dateToShortDate(DateTime date) {
  return "${date.year}-${date.month}-${date.day}";
}

String cutToInteger(double value) {
  String strVal = value.toString();
  if (value % 1 == 0)
    return value.toString().replaceRange(strVal.length - 2, null, '');
  return strVal;
}

String LocaleToString(Locale locale) {
  return '${locale.languageCode}_${locale.countryCode}';
}

Locale localeFromString(String strLocale) {
  if (strLocale.contains('.')) {
    strLocale = strLocale.replaceRange(strLocale.indexOf('.'), null, '');
  }
  final splitedLocale = strLocale.split('_');
  return Locale(splitedLocale[0], splitedLocale[1]);
}
