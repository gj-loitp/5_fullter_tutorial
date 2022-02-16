import 'package:hello_word/lib/common/const/dimen_constants.dart';

class ValidateUtil {
  static bool isValidPassword(String pw) {
    return pw.length >= DimenConstants.minLengthPassword &&
        isValidPasswordFormat(pw);
  }

  static bool isValidPasswordRetype(String pw, String pwRetype) {
    return pw == pwRetype;
  }

  static bool isValidPasswordFormat(String format) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(format);
  }
}
