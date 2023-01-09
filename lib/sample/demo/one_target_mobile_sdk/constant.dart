class Constant {
  static const String _workSpaceIdDev = "490bf1f1-2e88-4d6d-8ec4-2bb7de74f9a8";
  static const String _workSpaceIdStag = "60378690-27a8-430d-b491-34d858a93485";
  static const String _workSpaceIdProd = "4b970d32-261f-4dff-abf7-4f4ae76c2fb5";

  static const String _oneTargetAppPushIDDev =
      "d355f0df-6d85-4258-a871-82aaa4031b53";
  static const String _oneTargetAppPushIDStag =
      "4543aa42-4d7c-4666-a68c-077dfd79d752";
  static const String _oneTargetAppPushIDProd =
      "89fda2ae-7af9-4887-89a7-9b73656a2865";

  static const int environmentDev = 1;
  static const int environmentStag = 2;
  static const int environmentProd = 3;

  static int _env = environmentProd;

  static bool setEnv(int environment) {
    if (environment != environmentDev &&
        environment != environmentStag &&
        environment != environmentProd) {
      return false;
    }
    _env = environment;
    return true;
  }

  static int getEnv() {
    return _env;
  }

  static String getWorkSpaceId() {
    if (_env == environmentDev) {
      return _workSpaceIdDev;
    } else if (_env == environmentStag) {
      return _workSpaceIdStag;
    } else if (_env == environmentProd) {
      return _workSpaceIdProd;
    } else {
      return _workSpaceIdProd;
    }
  }

  static String getOneTargetAppPushID() {
    if (_env == environmentDev) {
      return _oneTargetAppPushIDDev;
    } else if (_env == environmentStag) {
      return _oneTargetAppPushIDStag;
    } else if (_env == environmentProd) {
      return _oneTargetAppPushIDProd;
    } else {
      return _oneTargetAppPushIDProd;
    }
  }

  static String getEnvironmentString() {
    if (_env == environmentDev) {
      return "DEV";
    } else if (_env == environmentStag) {
      return "STAG";
    } else if (_env == environmentProd) {
      return "PROD";
    } else {
      return "PROD";
    }
  }
}
