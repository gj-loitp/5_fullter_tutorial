import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/main.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/advancePdfViewer/AdvancePdfViewerScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/async/menu_async_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/counter/counter_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/crypto/crypto_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/dio/dio_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/encypt/encrypt_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/flutterBloc/MenuFlutterBlockScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/flutterLocalNotifications/FlutterLocalNotificationsScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/flutterScreenLock/FlutterScreenLockScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/getx/GetXScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/html2md/Html2MdScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/inherited/MenuInheritedScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/loadLocalJson/LoadLocalJsonScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/localAuth/LocalAuthScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/packageInfoPlus/PackageInfoPlusScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/permissionHandler/PermissionHandlerScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/restartApp/RestartApp.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/sharePlus/SharePlusScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/shop/ShopScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/theme/ThemeScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/tiengviet/TiengVietScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/timeAgo/TimeAgoScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/tipCalculator/TipCalculatorScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/todo/screen/ToDoMainScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/urlLauncher/UrlLauncherScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/wakeLock/WakeLockScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

import 'battery_plus/battery_plus_screen.dart';
import 'communication_between_widget/communication_between_widget_screen.dart';
import 'connectivity_plus/connectivity_plus_screen.dart';
import 'device_info_plus/device_info_plus_screen.dart';
import 'diacritic/diacritic_screen.dart';
import 'easy_debounce/easy_debounce_screen.dart';
import 'event_bus/event_bus_screen.dart';
import 'focusDetector/FocusDetectorScreen.dart';
import 'imageGallerySaver/ImageGallerySaverScreen.dart';
import 'oneTargetMobileSdk/OneTargetMobileSdkScreen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Demo menu",
        () {
          Get.back();
        },
        null,
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton(
            "AdvancePDFViewerScreen",
            () {
              Get.to(AdvancePDFViewerScreen());
            },
          ),
          UIUtils.getButton(
            "Async",
            () {
              Get.to(MenuAsyncScreen());
            },
          ),
          UIUtils.getButton(
            "battery_plus",
            () {
              Get.to(BatteryPlusScreen());
            },
          ),
          UIUtils.getButton(
            "CommunicationBetweenWidgetScreen",
            () {
              Get.to(CommunicationBetweenWidgetScreen());
            },
          ),
          UIUtils.getButton(
            "connectivity_plus",
            () {
              Get.to(ConnectivityPlusScreen());
            },
          ),
          UIUtils.getButton(
            "Counter",
            () {
              Get.to(CounterScreen());
            },
          ),
          UIUtils.getButton(
            "crypto",
            () {
              Get.to(CryptoScreen());
            },
          ),
          UIUtils.getButton(
            "device_info_plus",
            () {
              Get.to(DeviceInfoPlusScreen());
            },
          ),
          UIUtils.getButton(
            "diacritic",
            () {
              Get.to(DiacriticScreen());
            },
          ),
          UIUtils.getButton(
            "dio",
            () {
              Get.to(DioScreen());
            },
          ),
          UIUtils.getButton(
            "easy_debounce",
                () {
              Get.to(EasyDebounceScreen());
            },
          ),
          UIUtils.getButton(
            "encrypt",
                () {
              Get.to(EncryptScreen());
            },
          ),
          UIUtils.getButton(
            "event_bus",
            () {
              Get.to(EventBusScreen());
            },
          ),
          UIUtils.getButton(
            "MenuFlutterBlockScreen",
            () {
              Get.to(MenuFlutterBlockScreen());
            },
          ),
          UIUtils.getButton(
            "FlutterLocalNotificationScreen",
            () async {
              final NotificationAppLaunchDetails? notificationAppLaunchDetails =
                  await flutterLocalNotificationsPlugin
                      .getNotificationAppLaunchDetails();
              Get.to(
                  FlutterLocalNotificationScreen(notificationAppLaunchDetails));
            },
          ),
          UIUtils.getButton(
            "FlutterScreenLockScreen",
            () {
              Get.to(FlutterScreenLockScreen());
            },
          ),
          UIUtils.getButton(
            "FocusDetectorScreen",
            () {
              Get.to(FocusDetectorScreen());
            },
          ),
          UIUtils.getButton(
            "GetXScreen",
            () {
              Get.to(GetXScreen());
            },
          ),
          UIUtils.getButton(
            "Html2MdScreen",
            () {
              Get.to(Html2MdScreen());
            },
          ),
          UIUtils.getButton(
            "ImageGallerySaverScreen",
            () {
              Get.to(ImageGallerySaverScreen());
            },
          ),
          UIUtils.getButton(
            "Inherited",
            () {
              Get.to(MenuInheritedScreen());
            },
          ),
          UIUtils.getButton(
            "Load Local Json",
            () {
              Get.to(LoadLocalJsonScreen());
            },
          ),
          UIUtils.getButton(
            "Local Auth",
            () {
              Get.to(LocalAuthScreen());
            },
          ),
          UIUtils.getButton(
            "OneTargetMobileSDKScreen",
            () {
              Get.to(OneTargetMobileSDKScreen());
            },
          ),
          UIUtils.getButton(
            "PackageInforPlusScreen",
            () {
              Get.to(PackageInforPlusScreen());
            },
          ),
          UIUtils.getButton(
            "PermissionHandlerScreen",
            () {
              Get.to(PermissionHandlerScreen());
            },
          ),
          UIUtils.getButton(
            "RestartAppScreen",
            () {
              Get.to(RestartAppScreen());
            },
          ),
          UIUtils.getButton(
            "SharePlusScreen",
            () {
              Get.to(SharePlusScreen());
            },
          ),
          UIUtils.getButton(
            "Shop",
            () {
              Get.to(ShopScreen());
            },
          ),
          UIUtils.getButton(
            "Theme",
            () {
              Get.to(ThemeScreen());
            },
          ),
          UIUtils.getButton(
            "TiengVietScreen",
            () {
              Get.to(TiengVietScreen());
            },
          ),
          UIUtils.getButton(
            "TimeAgoScreen",
            () {
              Get.to(TimeAgoScreen());
            },
          ),
          UIUtils.getButton(
            "Tip calculator",
            () {
              Get.to(TipCalculatorScreen());
            },
          ),
          UIUtils.getButton(
            "ToDoMainScreen",
            () {
              Get.to(() => ToDoMainScreen());
            },
          ),
          UIUtils.getButton(
            "UrlLauncherScreen",
            () {
              Get.to(UrlLauncherScreen());
            },
          ),
          UIUtils.getButton(
            "WakeLockScreen",
            () {
              Get.to(WakeLockScreen());
            },
          ),
        ],
      ),
    );
  }
}
