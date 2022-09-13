import 'package:intl/intl.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class DurationUtils {
  static const FORMAT_T_Z = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
  static const FORMAT_T = "yyyy-MM-dd'T'HH:mm:ss.SSS";
  static const FORMAT_1 = "dd/MM/yyyy - HH:mm";
  static const FORMAT_2 = "dd/MM/yyyy HH:mm:ss";
  static const FORMAT_3 = "dd/MM/yyyy";

  static String formatSeconds(int sec) {
    Duration duration = Duration(seconds: sec);
    var seconds = duration.inSeconds;
    final days = seconds ~/ Duration.secondsPerDay;
    seconds -= days * Duration.secondsPerDay;
    final hours = seconds ~/ Duration.secondsPerHour;
    seconds -= hours * Duration.secondsPerHour;
    final minutes = seconds ~/ Duration.secondsPerMinute;
    seconds -= minutes * Duration.secondsPerMinute;

    final List<String> tokens = [];
    if (days == 0) {
      tokens.add("00");
    } else if (days <= 9) {
      tokens.add("0$days");
    } else {
      tokens.add("$days");
    }

    if (hours == 0) {
      tokens.add("00");
    } else if (hours <= 9) {
      tokens.add("0$hours");
    } else {
      tokens.add("$hours");
    }

    if (minutes == 0) {
      tokens.add("00");
    } else if (minutes <= 9) {
      tokens.add("0$minutes");
    } else {
      tokens.add("$minutes");
    }

    if (seconds <= 9) {
      tokens.add("0$seconds");
    } else {
      tokens.add("$seconds");
    }

    return tokens.join(":");
  }

  //1617727620030 -> value 2021-04-06T23:47:00.030Z
  static String formatTime(int millisecondsSinceEpoch, String dateFormat) {
    final df = new DateFormat(dateFormat);
    String value = df.format(new DateTime.fromMillisecondsSinceEpoch(
        millisecondsSinceEpoch,
        isUtc: false));
    return value;
  }

  static String nowHHmm() {
    return formatTime(DateTime.now().millisecondsSinceEpoch, FORMAT_2);
  }

  //date 2021-04-07T23:21:13.0481878,
  //fromFormat yyyy-MM-dd'T'HH:mm:ss.SSS
  //toFormat dd/MM/yyyy - HH:mm
  //formatted 07/04/2021 - 23:29
  static String convertDate(
    String date,
    String fromFormat,
    String toFormat,
  ) {
    if (date.isEmpty) {
      return "";
    }
    final format = DateFormat(fromFormat);
    DateTime gettingDate = format.parse(date);
    final DateFormat formatter = DateFormat(toFormat);
    final String formatted = formatter.format(gettingDate);
    // Dog.d("date $date, fromFormat $fromFormat, toFormat $toFormat, formatted $formatted");
    return formatted;
  }

  static int getTimeBetweenTargetAndNow(
    String timeTarget,
    String timeTargetFormat,
  ) {
    try {
      int millisecondsSinceEpochNow = DateTime.now().millisecondsSinceEpoch;
      // Dog.v(
      //     "getTimeBetweenNowAndTarget millisecondsSinceEpochNow $millisecondsSinceEpochNow");
      final format = DateFormat(timeTargetFormat);
      DateTime dateTimeTarget = format.parse(timeTarget);
      int millisecondsSinceEpochTarget = dateTimeTarget.millisecondsSinceEpoch;
      // Dog.v(
      //     "getTimeBetweenNowAndTarget millisecondsSinceEpochTarget $millisecondsSinceEpochTarget");
      return millisecondsSinceEpochTarget - millisecondsSinceEpochNow;
    } catch (e) {
      return 0;
    }
  }

  static bool isFutureTime(
    String timeTarget,
    String timeTargetFormat,
  ) {
    if (timeTarget.isEmpty || timeTargetFormat.isEmpty) {
      return false;
    }
    int timeBetweenTargetAndNow =
        getTimeBetweenTargetAndNow(timeTarget, timeTargetFormat);
    return timeBetweenTargetAndNow > 0;
  }

  static String formatISOTime(DateTime date) {
    var duration = date.timeZoneOffset;
    if (duration.isNegative)
      return (date.toIso8601String() +
          "-${duration.inHours.toString().padLeft(2, '0')}:${(duration.inMinutes - (duration.inHours * 60)).toString().padLeft(2, '0')}");
    else
      return (date.toIso8601String() +
          "+${duration.inHours.toString().padLeft(2, '0')}:${(duration.inMinutes - (duration.inHours * 60)).toString().padLeft(2, '0')}");
  }

  static delay(int _milliseconds, Function _f) {
    Future.delayed(Duration(milliseconds: _milliseconds), () {
      _f.call();
    });
  }
}
