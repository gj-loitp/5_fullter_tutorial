import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

abstract class BaseStatefulState<T extends StatefulWidget> extends State<T> {
  BaseStatefulState();

  void showAlertDialogWidget(
    bool barrierDismissible,
    String title,
    Widget widgetMessage,
    String cancelTitle,
    VoidCallback cancelAction,
    String okTitle,
    VoidCallback okAction,
  ) {
    showGeneralDialog(
      barrierColor: Colors.black.withOpacity(0.5),
      context: context,
      pageBuilder: (_, __, ___) {
        return WillPopScope(
          onWillPop: () async => barrierDismissible,
          child: Center(
            child: Container(
              width: Get.width,
              margin: EdgeInsets.all(DimenConstants.marginPaddingMedium),
              padding: EdgeInsets.fromLTRB(
                DimenConstants.marginPaddingMedium,
                DimenConstants.marginPaddingMedium,
                DimenConstants.marginPaddingMedium,
                DimenConstants.marginPaddingMedium,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff232426),
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: DimenConstants.marginPaddingMedium),
                  widgetMessage,
                  SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Visibility(
                        visible: cancelTitle.isNotEmpty == true,
                        child: (okTitle.isNotEmpty == true)
                            ? (Expanded(
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.fromLTRB(
                                      DimenConstants.marginPaddingMedium,
                                      DimenConstants.marginPaddingMedium *
                                          2 /
                                          3,
                                      DimenConstants.marginPaddingMedium,
                                      DimenConstants.marginPaddingMedium *
                                          2 /
                                          3,
                                    ),
                                    primary: Color(0xff0A79F8),
                                    backgroundColor: Color(0xffffffff),
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      side: BorderSide(
                                          color: Color(0xffDEE1EB), width: 1.0),
                                    ),
                                  ),
                                  onPressed: () {
                                    Get.back();
                                    cancelAction.call();
                                  },
                                  child: Text(
                                    cancelTitle,
                                  ),
                                ),
                              ))
                            : (TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(
                                    DimenConstants.marginPaddingMedium,
                                    DimenConstants.marginPaddingMedium * 2 / 3,
                                    DimenConstants.marginPaddingMedium,
                                    DimenConstants.marginPaddingMedium * 2 / 3,
                                  ),
                                  primary: Color(0xff0A79F8),
                                  backgroundColor: Color(0xffffffff),
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    side: BorderSide(
                                        color: Color(0xffDEE1EB), width: 1.0),
                                  ),
                                ),
                                onPressed: () {
                                  Get.back();
                                  cancelAction.call();
                                },
                                child: Text(
                                  cancelTitle,
                                ),
                              )),
                      ),
                      Visibility(
                        visible: okTitle.isNotEmpty == true,
                        child:
                            SizedBox(width: DimenConstants.marginPaddingSmall),
                      ),
                      Visibility(
                        visible: okTitle.isNotEmpty == true,
                        child: Expanded(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(
                                DimenConstants.marginPaddingMedium,
                                DimenConstants.marginPaddingMedium * 2 / 3,
                                DimenConstants.marginPaddingMedium,
                                DimenConstants.marginPaddingMedium * 2 / 3,
                              ),
                              primary: Color(0xffffffff),
                              backgroundColor: Color(0xff2B67F6),
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    DimenConstants.radiusRound)),
                                side: BorderSide(
                                    color: Color(0xff2B67F6), width: 1.0),
                              ),
                            ),
                            onPressed: () {
                              Get.back();
                              okAction.call();
                            },
                            child: Text(
                              okTitle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      transitionDuration: Duration(milliseconds: 500),
      transitionBuilder: (_, anim, __, child) {
        return ScaleTransition(
          scale: CurvedAnimation(
            parent: anim,
            curve: Curves.bounceIn,
            reverseCurve: Curves.bounceIn,
          ),
          child: child,
        );
      },
    );
  }

  void showAlertDialog(
    bool barrierDismissible,
    String title,
    String message,
    String? cancelTitle,
    VoidCallback? cancelAction,
    String? okTitle,
    VoidCallback? okAction,
  ) {
    showGeneralDialog(
      barrierColor: Colors.black.withOpacity(0.5),
      context: context,
      pageBuilder: (_, __, ___) {
        return WillPopScope(
          onWillPop: () async => barrierDismissible,
          child: Center(
            child: Container(
              width: Get.width,
              margin: EdgeInsets.all(DimenConstants.marginPaddingMedium),
              padding: EdgeInsets.fromLTRB(
                DimenConstants.marginPaddingMedium,
                DimenConstants.marginPaddingMedium,
                DimenConstants.marginPaddingMedium,
                DimenConstants.marginPaddingMedium,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff232426),
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: DimenConstants.marginPaddingMedium),
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff232426),
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Visibility(
                        visible: cancelTitle != null &&
                            cancelTitle.isNotEmpty == true,
                        child: (okTitle != null && okTitle.isNotEmpty == true)
                            ? (Expanded(
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.fromLTRB(
                                      DimenConstants.marginPaddingMedium,
                                      DimenConstants.marginPaddingMedium *
                                          2 /
                                          3,
                                      DimenConstants.marginPaddingMedium,
                                      DimenConstants.marginPaddingMedium *
                                          2 /
                                          3,
                                    ),
                                    primary: Color(0xff0A79F8),
                                    backgroundColor: Color(0xffffffff),
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      side: BorderSide(
                                          color: Color(0xffDEE1EB), width: 1.0),
                                    ),
                                  ),
                                  onPressed: () {
                                    Get.back();
                                    cancelAction?.call();
                                  },
                                  child: Text(
                                    cancelTitle ?? "",
                                  ),
                                ),
                              ))
                            : (TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(
                                    DimenConstants.marginPaddingMedium,
                                    DimenConstants.marginPaddingMedium * 2 / 3,
                                    DimenConstants.marginPaddingMedium,
                                    DimenConstants.marginPaddingMedium * 2 / 3,
                                  ),
                                  primary: Color(0xff0A79F8),
                                  backgroundColor: Color(0xffffffff),
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    side: BorderSide(
                                        color: Color(0xffDEE1EB), width: 1.0),
                                  ),
                                ),
                                onPressed: () {
                                  Get.back();
                                  cancelAction?.call();
                                },
                                child: Text(
                                  cancelTitle ?? "",
                                ),
                              )),
                      ),
                      Visibility(
                        visible: okTitle != null && okTitle.isNotEmpty == true,
                        child:
                            SizedBox(width: DimenConstants.marginPaddingSmall),
                      ),
                      Visibility(
                        visible: okTitle != null && okTitle.isNotEmpty == true,
                        child: Expanded(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(
                                DimenConstants.marginPaddingMedium,
                                DimenConstants.marginPaddingMedium * 2 / 3,
                                DimenConstants.marginPaddingMedium,
                                DimenConstants.marginPaddingMedium * 2 / 3,
                              ),
                              primary: Color(0xffffffff),
                              backgroundColor: Color(0xff2B67F6),
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                side: BorderSide(
                                    color: Color(0xff2B67F6), width: 1.0),
                              ),
                            ),
                            onPressed: () {
                              Get.back();
                              okAction?.call();
                            },
                            child: Text(
                              okTitle ?? "",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      transitionDuration: Duration(milliseconds: 500),
      transitionBuilder: (_, anim, __, child) {
        return ScaleTransition(
          scale: CurvedAnimation(
            parent: anim,
            curve: Curves.bounceIn,
            reverseCurve: Curves.bounceIn,
          ),
          child: child,
        );
      },
    );
  }

  void showErrorDialog(
    String title,
    String message,
    String cancelTitle,
    VoidCallback cancelCallback,
  ) {
    showAlertDialog(
      false,
      title,
      message,
      cancelTitle,
      cancelCallback,
      null,
      null,
    );
  }

  void showConfirmDialog(
    String title,
    String message,
    String okTitle,
    VoidCallback okCallback,
  ) {
    showAlertDialog(
      false,
      title,
      message,
      null,
      null,
      okTitle,
      okCallback,
    );
  }

  void showSnackBarFull(
    String title,
    String message,
  ) {
    UIUtils.showFullWidthSnackBar(title, message);
  }

  void showSnackBarFullError(
    String title,
    String message,
  ) {
    UIUtils.showFullWidthSnackBarError(title, message);
  }

  void showDialogSuccess(
    Widget textCenter,
    bool barrierDismissible,
    Function onClickConfirm,
  ) {
    showGeneralDialog(
      barrierColor: Colors.black.withOpacity(0.5),
      context: context,
      pageBuilder: (_, __, ___) {
        return WillPopScope(
          onWillPop: () async => barrierDismissible,
          child: Center(
            child: Container(
              width: Get.width,
              margin: EdgeInsets.all(DimenConstants.marginPaddingMedium),
              padding: EdgeInsets.fromLTRB(
                DimenConstants.marginPaddingMedium,
                DimenConstants.marginPaddingMedium,
                DimenConstants.marginPaddingMedium,
                0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(DimenConstants.radiusMedium),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/images/ic_success.png",
                    height: 45,
                    width: 45,
                  ),
                  SizedBox(height: DimenConstants.marginPaddingMedium),
                  textCenter,
                  SizedBox(height: DimenConstants.marginPaddingMedium),
                  Container(
                    height: 40,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(
                          DimenConstants.marginPaddingMedium * 5 / 2,
                          0,
                          DimenConstants.marginPaddingMedium * 5 / 2,
                          0,
                        ),
                        primary: Color(0xff2B67F6),
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          side:
                              BorderSide(color: Color(0xffDEE1EB), width: 1.0),
                        ),
                      ),
                      onPressed: () {
                        Get.back();
                        onClickConfirm.call();
                      },
                      child: Text(
                        "Đóng",
                      ),
                    ),
                  ),
                  SizedBox(height: DimenConstants.marginPaddingMedium),
                ],
              ),
            ),
          ),
        );
      },
      transitionDuration: Duration(milliseconds: 500),
      transitionBuilder: (_, anim, __, child) {
        return ScaleTransition(
          scale: CurvedAnimation(
            parent: anim,
            curve: Curves.bounceIn,
            reverseCurve: Curves.bounceIn,
          ),
          child: child,
        );
      },
    );
  }
}
