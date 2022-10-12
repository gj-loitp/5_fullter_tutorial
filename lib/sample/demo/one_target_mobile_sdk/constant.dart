class Constant {
  static const String _workSpaceIdDev = "490bf1f1-2e88-4d6d-8ec4-2bb7de74f9a8";
  static const String _workSpaceIdStag = "4d963ee6-9ccd-4cf0-b89f-b1730e1ff0e1";
  static const String _workSpaceIdProd = "";

  static const int ENV_DEV = 1;
  static const int ENV_STAG = 2;
  static const int ENV_PROD = 3;

  static int _env = ENV_DEV;

  static bool setEnv(int environment) {
    if (environment != ENV_DEV &&
        environment != ENV_STAG &&
        environment != ENV_PROD) {
      return false;
    }
    _env = environment;
    return true;
  }

  static int getEnv() {
    return _env;
  }

  static String getWorkSpaceId() {
    if (_env == ENV_DEV) {
      return _workSpaceIdDev;
    } else if (_env == ENV_STAG) {
      return _workSpaceIdStag;
    } else if (_env == ENV_PROD) {
      return _workSpaceIdProd;
    } else {
      return _workSpaceIdDev;
    }
  }
}
