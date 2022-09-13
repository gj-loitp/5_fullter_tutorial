import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UrlLauncherUtils.dart';
import 'package:one_target_mobile_sdk/one_target_mobile_sdk.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class OneTargetMobileSDKScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OneTargetMobileSDKScreenState();
  }
}

class _OneTargetMobileSDKScreenState
    extends BaseStatefulState<OneTargetMobileSDKScreen> {
  Object? _response;

  @override
  void initState() {
    super.initState();
    _setupTracking();
  }

  void _log(String msg) {
    if (kDebugMode) {
      print(msg);
    }
  }

  void _setupTracking() {
    //chọn môi trường để tracking, nếu set true thì sẽ tracking ở dev, false sẽ tracking ở prod.
    //Riêng đối với ios chỉ thực hiện tracking ở dev. Sẽ sớm bổ sung thêm prod ở next release.
    bool isEnvironmentDev = true;
    String writeKey = "490bf1f1-2e88-4d6d-8ec4-2bb7de74f9a8";
    //isShowLog dùng để hiển thị log của sdk
    bool isShowLog = false;
    Analytics.setupTracking(
      isEnvironmentDev,
      writeKey,
      isShowLog: isShowLog,
    ).then((isSetupSuccess) {
      _log("_setupTracking isSetupSuccess $isSetupSuccess");
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "OneTargetMobileSDKScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/one_target_mobile_sdk");
        },
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder<String?>(
              future: Analytics.platformVersion,
              builder: (_, snapshot) {
                return Text(snapshot.data ?? '');
              },
            ),
            SampleButton(
              text: "Send event 1",
              onPressed: () {
                _trackEvent1();
              },
            ),
            SampleButton(
              text: "Send event 2",
              onPressed: () {
                _trackEvent2();
              },
            ),
            const SizedBox(height: 32.0),
            const Text('>>>RESPONSE'),
            const SizedBox(height: 16.0),
            if (_response != null)
              Expanded(
                child: ListView(
                  children: [
                    Text(_getPrettyString()),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _trackEvent1() {
    _displayResponse(null);
    Analytics.trackEvent(
      "490bf1f1-2e88-4d6d-8ec4-2bb7de74f9a8",
      {
        "user_id": "U1${DateTime.now().millisecondsSinceEpoch}",
        "phone": "0123456789",
        "email": "loitp@galaxy.one",
        "deviceId": "999999999",
      },
      "event_name",
      DateTime.now().millisecondsSinceEpoch,
      {
        "pageTitle": "Passenger Information",
        "pagePath": "/home",
      },
      onResponse: (value) {
        _log(">>>onResponse $value");
        _displayResponse(value);
      },
      onFailure: (value) {
        _log(">>>onFailure $value");
        _displayResponse(value);
      },
    );
  }

  void _trackEvent2() {
    _displayResponse(null);
    Analytics.trackEvent(
      "490bf1f1-2e88-4d6d-8ec4-2bb7de74f9a8",
      {
        "user_id": "U2${DateTime.now().millisecondsSinceEpoch}",
        "phone": "000111222",
        "email": "loitp@galaxy.one",
        "deviceId": "8888888888",
      },
      "track_now_event",
      DateTime.now().millisecondsSinceEpoch,
      {
        "name": "Loitp",
        "bod": "01/01/2000",
        "player_id": 123456,
      },
      onResponse: (value) {
        _log(">>>onResponse $value");
        _displayResponse(value);
      },
      onFailure: (value) {
        _log(">>>onFailure $value");
        _displayResponse(value);
      },
    );
  }

  void _displayResponse(Object? response) {
    setState(() {
      _response = response;
    });
  }

  String _getPrettyString() {
    if (_response == null) {
      return "";
    }
    return _response.toString();
  }
}
