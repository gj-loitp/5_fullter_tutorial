import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:permission_handler/permission_handler.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class PermissionHandlerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PermissionHandlerScreenState();
  }
}

class _PermissionHandlerScreenState
    extends BaseStatefulState<PermissionHandlerScreen> {
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
        "PermissionHandlerScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/permission_handler");
        },
      ),
      body: Column(
        children: [
          Container(
            child: UIUtils.getText(
                "For all developers: You should check out this repo "
                "then uncomment some permission in AndroidManifest.xml. Ex: permission of SMS, location..."),
            padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          ),
          Expanded(
            child: ListView(
                padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
                physics: BouncingScrollPhysics(),
                children: Permission.values
                    .where((permission) {
                      if (Platform.isIOS) {
                        return permission != Permission.unknown &&
                            permission != Permission.sms &&
                            permission != Permission.storage &&
                            permission !=
                                Permission.ignoreBatteryOptimizations &&
                            permission != Permission.accessMediaLocation &&
                            permission != Permission.activityRecognition &&
                            permission != Permission.manageExternalStorage &&
                            permission != Permission.systemAlertWindow &&
                            permission != Permission.requestInstallPackages &&
                            permission != Permission.accessNotificationPolicy;
                      } else {
                        return permission != Permission.unknown &&
                            permission != Permission.mediaLibrary &&
                            permission != Permission.photos &&
                            permission != Permission.photosAddOnly &&
                            permission != Permission.reminders &&
                            permission != Permission.appTrackingTransparency &&
                            permission != Permission.criticalAlerts;
                      }
                    })
                    .map((permission) => PermissionWidget(permission))
                    .toList()),
          ),
        ],
      ),
    );
  }
}

class PermissionWidget extends StatefulWidget {
  /// Constructs a [PermissionWidget] for the supplied [Permission].
  const PermissionWidget(this._permission);

  final Permission _permission;

  @override
  _PermissionState createState() => _PermissionState(_permission);
}

class _PermissionState extends State<PermissionWidget> {
  _PermissionState(this._permission);

  final Permission _permission;
  PermissionStatus _permissionStatus = PermissionStatus.denied;

  @override
  void initState() {
    super.initState();

    _listenForPermissionStatus();
  }

  void _listenForPermissionStatus() async {
    final status = await _permission.status;
    setState(() => _permissionStatus = status);
  }

  Color getPermissionColor() {
    switch (_permissionStatus) {
      case PermissionStatus.denied:
        return Colors.red;
      case PermissionStatus.granted:
        return Colors.green;
      case PermissionStatus.limited:
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        _permission.toString(),
        style: Theme.of(context).textTheme.bodyText1,
      ),
      subtitle: Text(
        _permissionStatus.toString(),
        style: TextStyle(color: getPermissionColor()),
      ),
      trailing: (_permission is PermissionWithService)
          ? IconButton(
              icon: const Icon(
                Icons.info,
                color: Colors.white,
              ),
              onPressed: () {
                checkServiceStatus(
                    context, _permission as PermissionWithService);
              })
          : null,
      onTap: () {
        requestPermission(_permission);
      },
    );
  }

  void checkServiceStatus(
      BuildContext context, PermissionWithService permission) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text((await permission.serviceStatus).toString()),
    ));
  }

  Future<void> requestPermission(Permission permission) async {
    final status = await permission.request();

    setState(() {
      print(status);
      _permissionStatus = status;
      print(_permissionStatus);
    });
  }
}
