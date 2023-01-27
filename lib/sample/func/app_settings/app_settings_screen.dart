import 'package:app_settings/app_settings.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class AppSettingsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppSettingsScreenState();
  }
}

class _AppSettingsScreenState extends BaseStatefulState<AppSettingsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "app_settings",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/app_settings");
        },
      ),
      body: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

/// This is the app state.
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    /// Call out to intialize platform state.
    initPlatformState();
    super.initState();
  }

  /// Initialize platform state.
  Future<void> initPlatformState() async {
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;
  }

  /// Widget build method to return MaterailApp.
  @override
  Widget build(BuildContext context) {
    var actionItems = getListOfActionButtons();
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemCount: actionItems.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.all(2.0),
        child: actionItems[index],
      ),
    );
  }

  List<Widget> getListOfActionButtons() {
    var actionItems = <Widget>[];

    actionItems.addAll([
      ListTile(
          title: Text('Example Call With Callback'),
          minVerticalPadding: 5.0,
          onTap: (() {
            AppSettings.openWIFISettings(callback: () {
              print("sample callback function called");
            });
          })),
      ListTile(
          title: Text('WIFI'),
          minVerticalPadding: 5.0,
          onTap: (() {
            AppSettings.openWIFISettings();
          })),
      ListTile(
        title: Text("Location"),
        onTap: () {
          AppSettings.openLocationSettings();
        },
      ),
      ListTile(
        title: Text("Security"),
        onTap: () {
          AppSettings.openSecuritySettings();
        },
      ),
      ListTile(
        title: Text("Lock & Password"),
        onTap: () {
          AppSettings.openLockAndPasswordSettings();
        },
      ),
      ListTile(
        title: Text("App Settings"),
        onTap: () {
          AppSettings.openAppSettings();
        },
      ),
      ListTile(
        title: Text("Bluetooth"),
        onTap: () {
          AppSettings.openBluetoothSettings();
        },
      ),
      ListTile(
        title: Text("Data Roaming"),
        onTap: () {
          AppSettings.openDataRoamingSettings();
        },
      ),
      ListTile(
        title: Text("Date"),
        onTap: () {
          AppSettings.openDateSettings();
        },
      ),
      ListTile(
        title: Text("Display"),
        onTap: () {
          AppSettings.openDisplaySettings();
        },
      ),
      ListTile(
        title: Text("Notification"),
        onTap: () {
          AppSettings.openNotificationSettings();
        },
      ),
      ListTile(
        title: Text("Sound"),
        onTap: () {
          AppSettings.openSoundSettings();
        },
      ),
      ListTile(
        title: Text("Internal Storage"),
        onTap: () {
          AppSettings.openInternalStorageSettings();
        },
      ),
      ListTile(
        title: Text("Battery optimization"),
        onTap: () {
          AppSettings.openBatteryOptimizationSettings();
        },
      ),
      ListTile(
        title: Text("NFC"),
        onTap: () {
          AppSettings.openNFCSettings();
        },
      ),
      ListTile(
        title: Text("VPN"),
        onTap: () {
          AppSettings.openVPNSettings(
            asAnotherTask: true,
          );
        },
      ),
      ListTile(
        title: Text("Device Settings"),
        onTap: () {
          AppSettings.openDeviceSettings(
            asAnotherTask: true,
          );
        },
      ),
      ListTile(
        title: Text("Accessibility"),
        onTap: () {
          AppSettings.openAccessibilitySettings(
            asAnotherTask: true,
          );
        },
      ),
      ListTile(
        title: Text("Developer"),
        onTap: () {
          AppSettings.openDevelopmentSettings(
            asAnotherTask: true,
          );
        },
      ),
      ListTile(
        title: Text("Hotspot"),
        onTap: () {
          AppSettings.openHotspotSettings(
            asAnotherTask: true,
          );
        },
      ),
      ListTile(
        title: Text("APN"),
        onTap: () {
          AppSettings.openAPNSettings(asAnotherTask: true);
        },
      ),
      ListTile(
        title: Text("Alarm & Reminders"),
        onTap: () {
          AppSettings.openAlarmSettings(asAnotherTask: true);
        },
      ),
    ]);
    return actionItems;
  }

  /// Dispose method to close out and cleanup objects.
  @override
  void dispose() {
    super.dispose();
  }
}
