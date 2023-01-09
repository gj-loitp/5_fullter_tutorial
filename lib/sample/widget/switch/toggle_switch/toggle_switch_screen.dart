import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ToggleSwitchScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ToggleSwitchScreenState();
  }
}

class _ToggleSwitchScreenState extends BaseStatefulState<ToggleSwitchScreen> {
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
        "toggle_switch",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/toggle_switch");
        },
      ),
      body: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Basic toggle switch:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ToggleSwitch(
                    initialLabelIndex: 0,
                    totalSwitches: 3,
                    labels: ['America', 'Canada', 'Mexico'],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Basic toggle switch with custom height and font size:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ToggleSwitch(
                    minWidth: 90.0,
                    minHeight: 90.0,
                    fontSize: 16.0,
                    initialLabelIndex: 1,
                    activeBgColor: [Colors.green],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.grey[900],
                    totalSwitches: 3,
                    labels: ['Tall', 'Grande', 'Venti'],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'With text or icon and custom widths:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ToggleSwitch(
                    customWidths: [90.0, 50.0],
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.cyan],
                      [Colors.redAccent]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['YES', ''],
                    icons: [null, FontAwesomeIcons.times],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'With icons, text and different active background colors:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ToggleSwitch(
                    minWidth: 90.0,
                    initialLabelIndex: 1,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['Male', 'Female'],
                    icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
                    activeBgColors: [
                      [Colors.blue],
                      [Colors.pink]
                    ],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'With border color, border width, icons, custom height and different active background colors:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ToggleSwitch(
                    minWidth: 90.0,
                    minHeight: 70.0,
                    initialLabelIndex: 2,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 3,
                    icons: [
                      FontAwesomeIcons.mars,
                      FontAwesomeIcons.venus,
                      FontAwesomeIcons.transgender
                    ],
                    iconSize: 30.0,
                    borderWidth: 2.0,
                    borderColor: [Colors.blueGrey],
                    activeBgColors: [
                      [Colors.blue],
                      [Colors.pink],
                      [Colors.purple]
                    ],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'With gradient border color, divider color and gradient active background colors:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ToggleSwitch(
                    minWidth: 90.0,
                    minHeight: 70.0,
                    initialLabelIndex: 0,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 3,
                    icons: [
                      FontAwesomeIcons.facebook,
                      FontAwesomeIcons.twitter,
                      FontAwesomeIcons.instagram
                    ],
                    iconSize: 30.0,
                    borderColor: [
                      Color(0xff3b5998),
                      Color(0xff8b9dc3),
                      Color(0xff00aeff),
                      Color(0xff0077f2),
                      Color(0xff962fbf),
                      Color(0xff4f5bd5)
                    ],
                    dividerColor: Colors.blueGrey,
                    activeBgColors: [
                      [Color(0xff3b5998), Color(0xff8b9dc3)],
                      [Color(0xff00aeff), Color(0xff0077f2)],
                      [
                        Color(0xfffeda75),
                        Color(0xfffa7e1e),
                        Color(0xffd62976),
                        Color(0xff962fbf),
                        Color(0xff4f5bd5)
                      ]
                    ],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'With bounceInOut animation:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ToggleSwitch(
                    minWidth: 90.0,
                    minHeight: 70.0,
                    initialLabelIndex: 0,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    icons: [
                      FontAwesomeIcons.lightbulb,
                      FontAwesomeIcons.solidLightbulb,
                    ],
                    iconSize: 30.0,
                    activeBgColors: [
                      [Colors.black45, Colors.black26],
                      [Colors.yellow, Colors.orange]
                    ],
                    animate: true,
                    // with just animate set to true, default curve = Curves.easeIn
                    curve: Curves.bounceInOut,
                    // animate must be set to true when using custom curve
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'With radius style:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ToggleSwitch(
                    minWidth: 90.0,
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.green[800]!],
                      [Colors.red[800]!]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: ['True', 'False'],
                    radiusStyle: true,
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'With custom text styles, null initial label, double tap to de-activate:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ToggleSwitch(
                    minWidth: 90.0,
                    cornerRadius: 20.0,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: null,
                    doubleTapDisable: true,
                    // re-tap active widget to de-activate
                    totalSwitches: 3,
                    labels: ['Normal', 'Bold', 'Italic'],
                    customTextStyles: [
                      null,
                      TextStyle(
                          color: Colors.brown,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900),
                      TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontStyle: FontStyle.italic)
                    ],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'With custom icons:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ToggleSwitch(
                    minWidth: 90.0,
                    minHeight: 90.0,
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Color(0xfffdbb0a)],
                      [Colors.black54],
                      [Colors.white54]
                    ],
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 2,
                    totalSwitches: 3,
                    customIcons: [
                      Icon(
                        FontAwesomeIcons.ccVisa,
                        color: Color(0xff1a1f71),
                        size: 55.0,
                      ),
                      Icon(
                        FontAwesomeIcons.ccMastercard,
                        color: Color(0xffF79E1B),
                        size: 55.0,
                      ),
                      Icon(
                        FontAwesomeIcons.ccAmex,
                        color: Color(0xff27AEE3),
                        size: 55.0,
                      )
                    ],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Vertical toggle switch with active border:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ToggleSwitch(
                    activeBorders: [
                      Border.all(
                        color: Colors.purple.shade300,
                        width: 3.0,
                      ),
                      Border.all(
                        color: Colors.yellow.shade500,
                        width: 3.0,
                      ),
                      Border.all(
                        color: Colors.orange.shade300,
                        width: 3.0,
                      ),
                      Border.all(
                        color: Colors.blue.shade300,
                        width: 3.0,
                      ),
                    ],
                    activeFgColor: Colors.black54,
                    isVertical: true,
                    minWidth: 150.0,
                    radiusStyle: true,
                    cornerRadius: 20.0,
                    initialLabelIndex: 2,
                    activeBgColors: [
                      [Colors.purple.shade100],
                      [Colors.yellow.shade100],
                      [Colors.orange.shade100],
                      [Colors.blue.shade100]
                    ],
                    labels: ['Spring', 'Summer', 'Fall', 'Winter'],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Custom widths greater than device width:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Scrollbar(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ToggleSwitch(
                          customWidths: [300.0, 100.0, 100.0],
                          cornerRadius: 20.0,
                          activeBgColors: [
                            [Colors.green],
                            [Colors.redAccent],
                            [Colors.blue]
                          ],
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.grey,
                          inactiveFgColor: Colors.white,
                          labels: [
                            'Yes, the statement above is true',
                            'False',
                            'Other'
                          ],
                          onToggle: (index) {
                            print('switched to: $index');
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
