import 'package:intl/intl.dart';

class TimeUtils {
  static const String FORMAT_1 = "dd/MM/yyyy hh:mm:ss";

  static String convertFromMillisecondsSinceEpoch(
      int millisecondsSinceEpoch, String pattern) {
    DateTime date =
        new DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
    var format = new DateFormat(pattern);
    var dateString = format.format(date);
    return dateString;
  }
}
