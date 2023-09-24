extension DateTimeExt on DateTime {
  String toShortString() {
    return '${day}.${month}.${year}';
  }
}
