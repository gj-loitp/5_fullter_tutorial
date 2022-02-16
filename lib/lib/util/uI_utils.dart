import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';

class UIUtils {
  static AppBar getAppBar(
    String text,
    VoidCallback? onPressed,
    VoidCallback? onPressCodeViewer,
  ) {
    Widget _buildActionCodeWidget() {
      if (onPressCodeViewer == null) {
        return Container();
      } else {
        return IconButton(
          icon: Icon(
            Icons.code,
            color: Colors.white,
          ),
          onPressed: onPressCodeViewer,
        );
      }
    }

    return AppBar(
      title: Text(text),
      centerTitle: false,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: onPressed,
      ),

      //add action on appbar
      actions: <Widget>[
        _buildActionCodeWidget(),
      ],
      backgroundColor: Colors.blue,
      brightness: Brightness.dark,
    );
  }

  static ElevatedButton getButton(
    String text,
    VoidCallback? onPressed,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white70, //bkg color
        onPrimary: Colors.black, //text color
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(DimenConstants.radiusMedium),
        ),
      ),

      child: new Text(
        text,
        style: TextStyle(
          // color: Colors.black,
          fontSize: DimenConstants.txtMedium,
        ),
      ),
      // color: Colors.white70,
      onPressed: onPressed,
    );
  }

  static OutlinedButton getOutlineButton(
    String text,
    VoidCallback? onPressed,
  ) {
    return OutlinedButton(
      child: Text(text),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          width: 2.0,
          color: Colors.red,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DimenConstants.radiusRound),
        ),
      ),
    );
  }

  static Text getText(String text) {
    return Text(
      text,
      style: UIUtils.getStyleText(),
    );
  }

  static TextStyle getStyleText() {
    return TextStyle(
      color: Colors.black,
      fontSize: DimenConstants.txtMedium,
    );
  }

  static TextStyle getCustomFontTextStyle() {
    return TextStyle(
      color: Colors.blueAccent,
      fontFamily: 'Pacifico',
      fontWeight: FontWeight.w400,
      fontSize: 36.0,
    );
  }

  static LinearGradient getCustomGradient() {
    return LinearGradient(
      colors: [Colors.pink, Colors.blueAccent],
      begin: const FractionalOffset(0.0, 0.0),
      end: const FractionalOffset(0.6, 0.0),
      stops: [0.0, 0.6],
      tileMode: TileMode.clamp,
    );
  }

  static CircularProgressIndicator getCircularProgressIndicator(Color color) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(color),
    );
  }

  static Future sleep(int timeInSecond, Function? function) {
    return new Future.delayed(
      Duration(seconds: timeInSecond),
      () => function?.call(),
    );
  }

  static void showAlertDialog(
    BuildContext context,
    String title,
    String message,
    String? cancelTitle,
    VoidCallback? cancelAction,
    String okTitle,
    VoidCallback? okAction,
  ) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        content: Text(
          message,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff232426),
          ),
        ),
        title: Text(title),
        actions: [
          if (cancelTitle != null)
            CupertinoDialogAction(
              child: Text(
                cancelTitle,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff0A79F8),
                ),
              ),
              isDefaultAction: true,
              onPressed: () {
                Get.back();
                cancelAction?.call();
              },
            ),
          CupertinoDialogAction(
            child: Text(
              okTitle,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xffFF0000),
              ),
            ),
            onPressed: () {
              Get.back();
              okAction?.call();
            },
          ),
        ],
      ),
    );
  }

  static void showErrorDialog(
    BuildContext context,
    String title,
    String message,
    String okTitle,
    VoidCallback? okCallback,
  ) {
    showAlertDialog(
      context,
      title,
      message,
      null,
      null,
      okTitle,
      okCallback,
    );
  }

  static void showSnackBar(
    String title,
    String message,
  ) {
    Get.snackbar(
      title, // title
      message, // message
      // barBlur: 20,
      isDismissible: true,
      duration: Duration(seconds: 3),
    );
  }

  static void showDialogSuccess(
    BuildContext context,
    String msg,
    VoidCallback? onClickConfirm,
  ) {
    showGeneralDialog(
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 500),
      context: context,
      pageBuilder: (_, __, ___) {
        return Center(
          child: Container(
            width: 300,
            margin: EdgeInsets.all(DimenConstants.marginPaddingMedium),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(DimenConstants.radiusMedium),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: DimenConstants.marginPaddingMedium),
                AvatarGlow(
                  glowColor: Colors.green,
                  endRadius: 60,
                  duration: Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 100),
                  child: Image.asset(
                    "assets/images/ic_success.png",
                    height: 60,
                    width: 60,
                  ),
                ),
                // SizedBox(height: DimenConstants.marginPaddingMedium),
                Text(
                  msg,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff232426),
                  ),
                ),
                SizedBox(height: DimenConstants.radiusMedium),
                Divider(
                  color: Color(0xffC8C8CA),
                  height: 1,
                ),
                Container(
                  width: double.infinity,
                  height: DimenConstants.heightButton,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      primary: Color(0xff0A79F8),
                      // backgroundColor: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {
                      Get.back();
                      onClickConfirm?.call();
                    },
                    child: Text(
                      "Đóng",
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
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

  static Widget buildHorizontalDivider(
      Color color, double width, double height) {
    return Container(
      margin: EdgeInsets.all(0.0),
      height: height,
      width: width,
      color: color,
    );
  }

  static Widget buildVerticalDivider(Color color, double height) {
    return Container(
      margin: EdgeInsets.all(0.0),
      height: height,
      width: 1,
      color: color,
    );
  }

  static void showFullWidthSnackBar(String title, String message,
      {bool isTop = true}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      duration: Duration(seconds: 2),
      titleText: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Color(0xff232426),
        ),
      ),
      icon: Image(
        image: AssetImage('assets/images/ic_check_mark_green.png'),
        width: 20,
        height: 15,
      ),
      backgroundColor: Color.fromARGB(255, 212, 245, 217),
      snackStyle: SnackStyle.GROUNDED,
      margin: EdgeInsets.zero,
      colorText: Color.fromARGB(255, 35, 36, 38),
      snackPosition: isTop ? SnackPosition.TOP : SnackPosition.BOTTOM,
    );
  }

  static void showFullWidthSnackBarError(String title, String message,
      {bool isTop = true}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      duration: Duration(seconds: 2),
      titleText: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Color(0xff232426),
        ),
      ),
      icon: Image(
        image: AssetImage('assets/images/ic_x.png'),
        width: 20,
        height: 20,
        color: Color(0xffF13232),
      ),
      backgroundColor: Color(0xffFFDFDF),
      snackStyle: SnackStyle.GROUNDED,
      margin: EdgeInsets.zero,
      colorText: Color(0xff232426),
      snackPosition: isTop ? SnackPosition.TOP : SnackPosition.BOTTOM,
    );
  }

// static void showBottomSheetSingleChoice(
//     BuildContext context,
//     String title,
//     List<String> list,
//     Function(int) selectedPosition,
//     int firstSelectedPosition,
//     ) {
//   List<Widget> _buildListWidget() {
//     var listWidget = <Widget>[];
//
//     listWidget.add(
//       Container(
//         alignment: Alignment.center,
//         padding: EdgeInsets.fromLTRB(
//           0,
//           DimenConstants.marginPaddingSmall,
//           0,
//           0,
//         ),
//         child: Image.asset(
//           "resources/images/ic_slide_controller.png",
//           width: 45,
//           height: 5,
//         ),
//       ),
//     );
//     listWidget.add(
//       Container(
//         padding: EdgeInsets.fromLTRB(
//           DimenConstants.marginPaddingMedium,
//           0,
//           0,
//           0,
//         ),
//         child: Row(
//           children: [
//             Expanded(
//               child: Text(
//                 title,
//                 textAlign: TextAlign.start,
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xff232426),
//                 ),
//               ),
//             ),
//             Material(
//               color: Colors.transparent,
//               child: InkWell(
//                 customBorder: new CircleBorder(),
//                 child: Container(
//                   padding: EdgeInsets.all(15),
//                   child: Image.asset(
//                     "resources/images/ic_slide_down.png",
//                     width: 34,
//                     height: 34,
//                   ),
//                 ),
//                 onTap: () {
//                   Get.back();
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//     for (int i = 0; i < list.length; i++) {
//       listWidget.add(
//         Material(
//           color: Colors.transparent,
//           child: InkWell(
//             highlightColor: Colors.transparent,
//             child: Container(
//               alignment: Alignment.centerLeft,
//               padding: EdgeInsets.fromLTRB(
//                 DimenConstants.marginPaddingMedium,
//                 0,
//                 DimenConstants.marginPaddingMedium,
//                 0,
//               ),
//               height: DimenConstants.buttonHeight * 2 / 3,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     i == firstSelectedPosition
//                         ? "resources/images/ic_checkbox_select_circle.png"
//                         : "resources/images/ic_checkbox_unselect_circle.png",
//                     width: 18,
//                     height: 18,
//                   ),
//                   SizedBox(width: DimenConstants.marginPaddingMedium),
//                   Expanded(
//                     child: Text(
//                       list[i],
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         color: Color(0xff232426),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             onTap: () {
//               Get.back();
//               selectedPosition.call(i);
//             },
//           ),
//         ),
//       );
//     }
//
//     return listWidget;
//   }
//
//   showMaterialModalBottomSheet(
//     context: context,
//     backgroundColor: Colors.transparent,
//     builder: (builder) {
//       return Container(
//         padding: EdgeInsets.only(bottom: DimenConstants.marginPaddingMedium),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(25),
//             topRight: Radius.circular(25),
//           ),
//         ),
//         child: Wrap(
//           children: _buildListWidget(),
//         ),
//       );
//     },
//   );
// }
//
// static void showBottomSheetSingleChoiceWithLargeData(
//     BuildContext context,
//     String title,
//     List<String> list,
//     Function(int) selectedPosition,
//     int firstSelectedPosition,
//     ) {
//   if (list == null || list.isEmpty) {
//     return;
//   }
//
//   List<Widget> _buildListWidget() {
//     var listWidget = <Widget>[];
//     for (int i = 0; i < list.length; i++) {
//       listWidget.add(
//         Material(
//           color: Colors.transparent,
//           child: InkWell(
//             child: Container(
//               alignment: Alignment.centerLeft,
//               padding: EdgeInsets.fromLTRB(
//                 DimenConstants.marginPaddingMedium,
//                 0,
//                 DimenConstants.marginPaddingMedium,
//                 0,
//               ),
//               height: DimenConstants.buttonHeight * 2 / 3,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     i == firstSelectedPosition
//                         ? "resources/images/ic_checkbox_select_circle.png"
//                         : "resources/images/ic_checkbox_unselect_circle.png",
//                     width: 18,
//                     height: 18,
//                   ),
//                   SizedBox(width: DimenConstants.marginPaddingMedium),
//                   Expanded(
//                     child: Text(
//                       list[i],
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         color: Color(0xff232426),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             onTap: () {
//               Get.back();
//               selectedPosition.call(i);
//             },
//           ),
//         ),
//       );
//     }
//     return listWidget;
//   }
//
//   double _height = (list.length > 10) ? Get.height / 2 : Get.height / 3;
//   showMaterialModalBottomSheet(
//     context: context,
//     backgroundColor: Colors.transparent,
//     enableDrag: false,
//     builder: (builder) {
//       return Container(
//         height: _height,
//         margin: EdgeInsets.only(top: DimenConstants.marginPaddingLarge),
//         padding: EdgeInsets.only(bottom: DimenConstants.marginPaddingMedium),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(25),
//             topRight: Radius.circular(25),
//           ),
//         ),
//         child: Column(
//           children: [
//             Container(
//               alignment: Alignment.center,
//               padding: EdgeInsets.fromLTRB(
//                 0,
//                 DimenConstants.marginPaddingSmall,
//                 0,
//                 0,
//               ),
//               child: Image.asset(
//                 "resources/images/ic_slide_controller.png",
//                 width: 45,
//                 height: 5,
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.fromLTRB(
//                 DimenConstants.marginPaddingMedium,
//                 0,
//                 0,
//                 0,
//               ),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Text(
//                       title,
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500,
//                         color: Color(0xff232426),
//                       ),
//                     ),
//                   ),
//                   Material(
//                     color: Colors.transparent,
//                     child: InkWell(
//                       customBorder: new CircleBorder(),
//                       child: Container(
//                         padding: EdgeInsets.all(15),
//                         child: Image.asset(
//                           "resources/images/ic_slide_down.png",
//                           width: 34,
//                           height: 34,
//                         ),
//                       ),
//                       onTap: () {
//                         Get.back();
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: ListView(
//                 padding: EdgeInsets.all(0),
//                 physics: BouncingScrollPhysics(),
//                 children: _buildListWidget(),
//               ),
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }
}
