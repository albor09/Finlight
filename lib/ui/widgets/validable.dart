class ValidableController {
  void Function()? _onNotValid;

  void animateNotValid() {
    _onNotValid?.call();
  }

  void setOnNotValid(void Function()? onNotValid) {
    _onNotValid = onNotValid;
  }
}
