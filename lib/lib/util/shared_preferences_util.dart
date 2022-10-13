import 'dart:convert';

import 'package:com.roy93group.flutter_tutorial/sample/model/gg.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class SharedPreferencesUtil {
  static const KEY_GG = "KEY_GG";
  static const KEY_TEST_BOOL = "KEY_TEST_BOOL";

  static Future<void> setInt(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
  }

  static Future<int?> getInt(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  static Future<void> setBool(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }

  static Future<bool?> getBool(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  static Future<void> setGG(GG gg) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(KEY_GG, jsonEncode(gg));
  }

  static Future<GG?> getGG() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString(KEY_GG);
    if (jsonString == null) {
      return null;
    }
    try {
      return GG.fromJson(jsonDecode(jsonString));
    } catch (e) {
      return null;
    }
  }

  static Future<bool> isReady() async {
    GG? gg = await getGG();
    var vs = gg?.config?.vs;

    final info = await PackageInfo.fromPlatform();
    var buildNumber = info.buildNumber;

    bool isReady = false;
    vs?.forEach((element) {
      if (element == buildNumber) {
        isReady = true;
      }
    });

    return isReady;
  }

  static Future<bool> isFullData() async {
    GG? gg = await getGG();
    return gg?.config?.isFullData ?? false;
  }
}
