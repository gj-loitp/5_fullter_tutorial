import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ValidateUtils {
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
