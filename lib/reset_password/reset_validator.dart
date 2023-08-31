final class ResetValidator {
  final String? text;
  static const String _emptyError = 'This field cannot be empty';
  ResetValidator(this.text);
  String? controlandMessage() {
    if (control()) {
      return null;
    }
    return _emptyError;
  }

  bool control() {
    if (text == null || text!.isEmpty) return false;
    if (text!.length < 8) return false;
    return true;
  }
}
