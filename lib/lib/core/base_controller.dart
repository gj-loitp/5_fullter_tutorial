import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class BaseController extends GetxController {
  var appLoading = AppLoading(
    false,
    "",
    null,
    DateTime.now().millisecondsSinceEpoch,
  ).obs;

  var appError = AppError(
    "",
    null,
    DateTime.now().millisecondsSinceEpoch,
  ).obs;

  void setAppLoading(
    bool isLoading,
    String messageLoading,
    TypeApp typeApp,
  ) {
    AppLoading loading = AppLoading(
      isLoading,
      messageLoading,
      typeApp,
      DateTime.now().millisecondsSinceEpoch,
    );
    this.appLoading.value = loading;
  }

  void setAppError(
    String messageError,
    TypeApp typeApp,
  ) {
    AppError appError = AppError(
      messageError,
      typeApp,
      DateTime.now().millisecondsSinceEpoch,
    );
    this.appError.value = appError;
  }
}

class AppLoading {
  AppLoading(
    this.isLoading,
    this.messageLoading,
    this.typeApp,
    this.millisecondsSinceEpoch,
  );

  bool isLoading;
  String messageLoading;
  TypeApp? typeApp;
  int millisecondsSinceEpoch;
}

class AppError {
  AppError(this.messageError, this.typeApp, this.millisecondsSinceEpoch);

  String messageError;
  TypeApp? typeApp;
  int millisecondsSinceEpoch;
}

enum TypeApp {
  postSendOTP,
  postVerifyOTP,
  postResendOTP,
}
