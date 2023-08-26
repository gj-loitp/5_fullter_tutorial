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
        title: Text('accessibility'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.accessibility);
        },
      ),
      ListTile(
        title: Text('alarm'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.alarm);
        },
      ),
      ListTile(
        title: Text('apn'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.apn);
        },
      ),
      ListTile(
        title: Text('batteryOptimization'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(
              type: AppSettingsType.batteryOptimization);
        },
      ),
      ListTile(
        title: Text('bluetooth'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.bluetooth);
        },
      ),
      ListTile(
        title: Text('dataRoaming'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.dataRoaming);
        },
      ),
      ListTile(
        title: Text('date'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.date);
        },
      ),
      ListTile(
        title: Text('developer'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.developer);
        },
      ),
      ListTile(
        title: Text('device'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.device);
        },
      ),
      ListTile(
        title: Text('display'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.display);
        },
      ),
      ListTile(
        title: Text('hotspot'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.hotspot);
        },
      ),
      ListTile(
        title: Text('internalStorage'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.internalStorage);
        },
      ),
      ListTile(
        title: Text('location'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.location);
        },
      ),
      ListTile(
        title: Text('lockAndPassword'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.lockAndPassword);
        },
      ),
      ListTile(
        title: Text('nfc'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.nfc);
        },
      ),
      ListTile(
        title: Text('notification'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.notification);
        },
      ),
      ListTile(
        title: Text('security'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.security);
        },
      ),
      ListTile(
        title: Text('settings'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.settings);
        },
      ),
      ListTile(
        title: Text('sound'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.sound);
        },
      ),
      ListTile(
        title: Text('subscriptions'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.subscriptions);
        },
      ),
      ListTile(
        title: Text('vpn'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.vpn);
        },
      ),
      ListTile(
        title: Text('wifi'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.wifi);
        },
      ),
      ListTile(
        title: Text('wireless'),
        minVerticalPadding: 5.0,
        onTap: () {
          AppSettings.openAppSettings(type: AppSettingsType.wireless);
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
