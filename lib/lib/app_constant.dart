import '../sample/model/gg.dart';

class AppConstant {
  static GG? gg = null;

  static void setGG(GG g) {
    gg = g;
  }

  static bool isFullData() {
    return gg?.config?.isFullData ?? false;
  }

  static bool isReady() {
    return gg?.config?.isReady ?? false;
  }
}
