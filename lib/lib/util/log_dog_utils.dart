import 'package:logger/logger.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class Dog {
  static Logger getDog() {
    return Logger(
      printer: PrettyPrinter(
          methodCount: 2,
          // number of method calls to be displayed
          errorMethodCount: 8,
          // number of method calls if stacktrace is provided
          lineLength: 120,
          // width of the output
          colors: true,
          // Colorful log messages
          printEmojis: true,
          // Print an emoji for each log message
          printTime: true // Should each log print contain a timestamp
          ),
    );
  }

  static void v(String s) {
    getDog().v(s);
  }

  static void d(String s) {
    getDog().d(s);
  }

  static void i(String s) {
    getDog().i(s);
  }

  static void w(String s) {
    getDog().w(s);
  }

  static void e(String s) {
    getDog().e(s);
  }

  static void wtf(String s) {
    getDog().wtf(s);
  }
}
