import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/log_dog_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */

//doc https://firebase.google.com/docs/remote-config/get-started?platform=flutter
class FirebaseRemoteConfigScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirebaseRemoteConfigScreenState();
  }
}

class _FirebaseRemoteConfigScreenState
    extends BaseStatefulState<FirebaseRemoteConfigScreen> {
  String _msg = "";

  @override
  void initState() {
    super.initState();
    _setupFirebaseConfig();
  }

  Future<void> _setupFirebaseConfig() async {
    Dog.e("_msg $_msg");

    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(hours: 1),
    ));

    await remoteConfig.setDefaults(const {
      "msg": "default value from App",
    });

    setState(() {
      _msg = remoteConfig.getString("msg");
      Dog.e("_msg $_msg");
    });

    remoteConfig.fetchAndActivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "firebase_remote_config",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/firebase_remote_config");
        },
      ),
      body: Center(
        child: UIUtils.getText(_msg),
      ),
    );
  }
}
