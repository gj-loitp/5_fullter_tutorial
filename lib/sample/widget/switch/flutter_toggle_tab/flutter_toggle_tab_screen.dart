import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:flutter_toggle_tab/helper.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FlutterToggleTabScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterToggleTabScreenState();
  }
}

class _FlutterToggleTabScreenState
    extends BaseStatefulState<FlutterToggleTabScreen> {
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
        "flutter_toggle_tab",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/flutter_toggle_tab");
        },
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _tabTextIndexSelected = 1;
  var _tabTextIconIndexSelected = 0;
  var _tabIconIndexSelected = 0;
  var _tabSelectedIndexSelected = 0;

  var _listTextTabToggle = ["Tab A (10)", "Tab B (6)", "Tab C (9)"];
  var _listTextSelectedToggle = [
    "Select A (10)",
    "Select B (6)",
    "Select C (9)"
  ];
  var _listIconTabToggle = [
    Icons.person,
    Icons.pregnant_woman,
  ];
  var _listGenderText = ["Male", "Female"];
  var _listGenderEmpty = ["", ""];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          /// Basic Toggle Sample
          SizedBox(
            height: heightInPercent(3, context),
          ),
          Text(
            "Basic Tab Toggle",
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: heightInPercent(3, context),
          ),
          FlutterToggleTab(
            // width in percent
            width: 90,
            borderRadius: 30,
            height: 50,
            selectedIndex: _tabTextIndexSelected,
            selectedBackgroundColors: [Colors.blue, Colors.blueAccent],
            selectedTextStyle: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
            unSelectedTextStyle: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w500),
            labels: _listTextTabToggle,
            selectedLabelIndex: (index) {
              setState(() {
                _tabTextIndexSelected = index;
              });
            },
            isScroll: false,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _tabTextIndexSelected = 2;
              });
            },
            child: Text("Change to Index 2"),
          ),
          SizedBox(
            height: heightInPercent(3, context),
          ),
          Text(
            "Index selected : $_tabTextIndexSelected",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: heightInPercent(3, context),
          ),
          Divider(
            thickness: 2,
          ),

          /// Text with icon sample
          SizedBox(
            height: heightInPercent(3, context),
          ),
          Text(
            "Text With Icon",
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select your sex : ",
                  style: TextStyle(fontSize: 20),
                ),
                FlutterToggleTab(
                  width: 50,
                  borderRadius: 15,
                  selectedTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  unSelectedTextStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  labels: _listGenderText,
                  icons: _listIconTabToggle,
                  selectedIndex: _tabTextIconIndexSelected,
                  selectedLabelIndex: (index) {
                    setState(() {
                      _tabTextIconIndexSelected = index;
                    });
                  },
                ),
              ],
            ),
          ),

          /// Icon with Text Button Sample
          SizedBox(
            height: heightInPercent(3, context),
          ),
          Text(
            "Selected sex : ${_listGenderText[_tabTextIconIndexSelected]} ",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: heightInPercent(3, context),
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: heightInPercent(3, context),
          ),

          /// Icon button sample
          Text(
            "With Icon Only and Implement margin for selected item",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select your sex : ",
                  style: TextStyle(fontSize: 20),
                ),
                FlutterToggleTab(
                  width: 40,
                  borderRadius: 15,
                  selectedIndex: _tabIconIndexSelected,
                  selectedTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  unSelectedTextStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  labels: _listGenderEmpty,
                  icons: _listIconTabToggle,
                  selectedLabelIndex: (index) {
                    setState(() {
                      _tabIconIndexSelected = index;
                    });
                  },
                  marginSelected:
                      EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                ),
              ],
            ),
          ),
          SizedBox(
            height: heightInPercent(3, context),
          ),
          Text(
            "Selected sex index: $_tabIconIndexSelected ",
            style: TextStyle(fontSize: 20),
          ),
          Divider(
            thickness: 2,
          ),

          /// Update select programmatically sample
          SizedBox(
            height: heightInPercent(3, context),
          ),
          Text(
            "Update selected programmatically  ",
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select your sex : ",
                  style: TextStyle(fontSize: 20),
                ),
                FlutterToggleTab(
                  width: 90,
                  borderRadius: 15,
                  selectedIndex: _tabSelectedIndexSelected,
                  selectedTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  unSelectedTextStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  labels: _listTextSelectedToggle,
                  selectedLabelIndex: (index) {
                    setState(() {
                      _tabSelectedIndexSelected = index;
                    });
                  },
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _tabSelectedIndexSelected = 2;
                    });
                  },
                  child: Text("Select C"),
                )
              ],
            ),
          ),
          SizedBox(
            height: heightInPercent(3, context),
          ),
          Text(
            "Selected sex index: $_tabIconIndexSelected ",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
