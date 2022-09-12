import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/shared_preferences_util.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class SharedPreferencesScreen extends StatefulWidget {
  @override
  SharedPreferencesScreenState createState() {
    return SharedPreferencesScreenState();
  }
}

class SharedPreferencesScreenState extends State<SharedPreferencesScreen> {
  var nameOfApp = "SharedPreferencesScreen";
  var counter = 0;
  bool? boolValue = false;

  // define a key to use later
  var key = "counter";

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  _loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      // Get value
      counter = (prefs.getInt(key) ?? 0);
    });

    SharedPreferencesUtil.getBool(SharedPreferencesUtil.KEY_TEST_BOOL)
        .then((value) {
      boolValue = value;
    });
  }

  _onIncrementHit() async {
    // Get shared preference instance
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      // Get value
      counter = (prefs.getInt(key) ?? 0) + 1;
    });

    // Save Value
    prefs.setInt(key, counter);
  }

  _onDecrementHit() async {
    // Get shared preference instance
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      // Get value
      counter = (prefs.getInt(key) ?? 0) - 1;
    });

    // Save Value
    prefs.setInt(key, counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        nameOfApp,
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/sharedPreferences");
        },
      ),
      // Body
      body: Container(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            UIUtils.getText("$counter"),
            Padding(
                padding: EdgeInsets.all(DimenConstants.marginPaddingMedium)),
            UIUtils.getButton("Increment Counter", () => _onIncrementHit()),
            UIUtils.getButton("Decrement Counter", () => _onDecrementHit()),
            SizedBox(height: 50),
            UIUtils.getText("$boolValue"),
            UIUtils.getButton(
              "set true",
              () {
                SharedPreferencesUtil.setBool(
                        SharedPreferencesUtil.KEY_TEST_BOOL, true)
                    .then(
                  (value) {
                    setState(
                      () {
                        boolValue = true;
                      },
                    );
                  },
                );
              },
            ),
            UIUtils.getButton(
              "set false",
              () {
                SharedPreferencesUtil.setBool(
                        SharedPreferencesUtil.KEY_TEST_BOOL, false)
                    .then(
                  (value) {
                    setState(
                      () {
                        boolValue = false;
                      },
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
