import 'package:dartx/dartx.dart';

class ValidateUtils {
  ValidateUtils._();

  static bool hasSpecialCharacters(String value) {
    final regExp = RegExp(r'[!@#$%^&*()_\-\[\]{}+=|\\:;"<>,.?/]');
    if (regExp.hasMatch(value)) {
      return true;
    }
    return false;
  }

  static bool validatePhoneNumber(String? value) {
    if (value.isNullOrEmpty) {
      return false;
    }
    final regExp = RegExp(
      r'^(0|\+84)(3[2-9]|5[6|89]|7[0|6-9]|8[1-9]|9[0-9])[0-9]{7}$',
    );
    return regExp.hasMatch(value!);
  }

  static bool validateEmail(String? value) {
    final regExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (regExp.hasMatch(value ?? '')) {
      return true;
    }
    return false;
  }

  static bool validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }
    if (value.length < 6) {
      return false;
    }
    return true;
  }
}
