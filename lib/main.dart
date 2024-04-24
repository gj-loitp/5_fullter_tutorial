import 'dart:async';
import 'dart:io';

import 'package:applovin_max/applovin_max.dart';
import 'package:com.roy93group.flutter_tutorial/sample/applovin/applovin_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:get/get.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'lib/util/log_dog_utils.dart';
import 'splash_screen.dart';
/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */

//TODO check to change new ic_launcher
//firebase console
//https://console.firebase.google.com/u/0/project/roy-flutter-tutorial/overview

//drive config
//https://drive.google.com/drive/u/0/folders/1kevDB8a5a-POwkGupg3xOiZByoGjAe3B
//TODO dark mode
//TODO rate app, more app
//TODO change keystore 2022.10.03
//TODO change background_image: "assets/images/splash.jpg"
//TODO app name, ic launcher
//TODO google config show isFullData use dio demo screen 2022.10.13
//TODO lan dau mo app check valid google neu ko co connection se bi treo app
//TODO firebase
//TODO applovin
//TODO pkg name

//@mckimquyen

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

/// Streams are created so that app can respond to notification-related events
/// since the plugin is initialised in the `main` function
final BehaviorSubject<ReceivedNotification> didReceiveLocalNotificationSubject =
    BehaviorSubject<ReceivedNotification>();

final BehaviorSubject<String?> selectNotificationSubject = BehaviorSubject<String?>();

const MethodChannel platform = MethodChannel('dexterx.dev/flutter_local_notifications_example');

class ReceivedNotification {
  ReceivedNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.payload,
  });

  final int id;
  final String? title;
  final String? body;
  final String? payload;
}

String? selectedNotificationPayload;

// build: flutter build appbundle
// flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
// flutter build apk --debug --verbose

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      // statusBarColor: Colors.blue, // status bar color
      // statusBarIconBrightness: Brightness.light, // status bar icons' color
      systemNavigationBarColor: Colors.deepOrange, // navigation bar color
      systemNavigationBarIconBrightness: Brightness.light, //navigation bar icons' color
    ),
  );
  testLogger();

  //for flutter local notifications
  // needed if you intend to initialize in the `main` function
  WidgetsFlutterBinding.ensureInitialized();

  // if (Platform.isIOS) {
  //   await Firebase.initializeApp(
  //       options: FirebaseOptions(
  //           apiKey: "your api key Found in GoogleService-info.plist",
  //           appId: "Your app id found in Firebase",
  //           messagingSenderId: "Your Sender id found in Firebase",
  //           projectId: "Your Project id found in Firebase"));
  // } else {
  //   await Firebase.initializeApp();
  // }
  await _configureLocalTimeZone();
  if (Platform.isAndroid) {
    await FlutterDisplayMode.setHighRefreshRate();
  }
  final NotificationAppLaunchDetails? notificationAppLaunchDetails =
      !kIsWeb && Platform.isLinux ? null : await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();
  if (notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) {
    selectedNotificationPayload = notificationAppLaunchDetails!.payload;
  }

  const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('app_icon');

  /// Note: permissions aren't requested here just to demonstrate that can be
  /// done later
  final IOSInitializationSettings initializationSettingsIOS = IOSInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
      onDidReceiveLocalNotification: (
        int id,
        String? title,
        String? body,
        String? payload,
      ) async {
        didReceiveLocalNotificationSubject.add(
          ReceivedNotification(
            id: id,
            title: title,
            body: body,
            payload: payload,
          ),
        );
      });
  const MacOSInitializationSettings initializationSettingsMacOS = MacOSInitializationSettings(
    requestAlertPermission: false,
    requestBadgePermission: false,
    requestSoundPermission: false,
  );
  final LinuxInitializationSettings initializationSettingsLinux = LinuxInitializationSettings(
    defaultActionName: 'Open notification',
    defaultIcon: AssetsLinuxIcon('icons/app_icon.png'),
  );
  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
    macOS: initializationSettingsMacOS,
    linux: initializationSettingsLinux,
  );
  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: (String? payload) async {
    if (payload != null) {
      debugPrint('notification payload: $payload');
    }
    selectedNotificationPayload = payload;
    selectNotificationSubject.add(payload);
  });

  final navigatorKey = GlobalKey<NavigatorState>();

  //init applovin
  initializePlugin();

  runApp(
    DevicePreview(
      enabled: kIsWeb,
      builder: (context) => Phoenix(
        child: GetMaterialApp(
          enableLog: true,
          debugShowCheckedModeBanner: true,
          defaultTransition: Transition.cupertino,
          // theme: ThemeData(
          //   colorScheme:
          //       ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange)
          //           .copyWith(secondary: Colors.deepOrange)
          //           .copyWith(background: Colors.white),
          // ),
          home: SplashScreen(),
          navigatorKey: navigatorKey,
          builder: (context, _) {
            var child = _!;
            child = DevicePreview.appBuilder(context, _);
            child = Toast(child: child, navigatorKey: navigatorKey);
            return child;
          },
          locale: DevicePreview.locale(context),
          theme: ThemeData.light().copyWith(extensions: [FlashToastTheme(), FlashBarTheme()]),
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.light,
        ),
      ),
    ),
  );
}

Future<void> _configureLocalTimeZone() async {
  if (kIsWeb || Platform.isLinux) {
    return;
  }
  tz.initializeTimeZones();
  final String? timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
  tz.setLocalLocation(tz.getLocation(timeZoneName!));
}

void testLogger() {
  Dog.d("testLogger");
  Dog.e("testLogger");
  Dog.v("testLogger");
  Dog.i("testLogger");
}

Future<void> initializePlugin() async {
  // deviceId = await PlatformDeviceId.getDeviceId;
  // debugPrint("roy93~ deviceId $deviceId");

  deviceId = await FlutterUdid.consistentUdid;
  // debugPrint("deviceId $deviceId");

  var configuration = await AppLovinMAX.initialize(sdkKey);
  if (configuration != null) {
    Dog.i("initializePlugin success");
    if (kDebugMode) {
      Get.snackbar("Applovin", "initializePlugin success (only show this msg in debug mode)");
    }
  }
}
