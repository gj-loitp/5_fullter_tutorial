import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import '../../../lib/animation/hero/hero_dialog_route.dart';
import 'custom_logo.dart';
import 'page_1.dart';
import 'page_2.dart';

class HeroAnimationDemoScreen extends StatefulWidget {
  @override
  _HeroAnimationDemoScreenState createState() =>
      _HeroAnimationDemoScreenState();
}

class _HeroAnimationDemoScreenState extends State<HeroAnimationDemoScreen> {
  _onButtonTap(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
          fullscreenDialog: true, builder: (BuildContext context) => page),
    );
  }

  _onButtonTapPopup(Widget page) {
    Navigator.push(
      context,
      HeroDialogRoute(builder: (BuildContext context) => page),
    );
  }

  _onButtonTapCustom(Widget page) {
    Navigator.of(context).push(
      PageRouteBuilder<Null>(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return AnimatedBuilder(
                animation: animation,
                builder: (BuildContext context, Widget? child) {
                  return Opacity(
                    opacity: animation.value,
                    child: page,
                  );
                });
          },
          transitionDuration: Duration(milliseconds: 600)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "HeroAnimationDemoScreen",
        () => Get.back(),
        null,
      ),
      body: Container(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _buildCustomButton(
                "Simple Hero",
                Page1(),
              ),
              _buildCustomButton(
                "Two Heroes",
                Page2(),
              ),
              _buildCustomButton(
                "Hero on Dialog",
                _buildPopUp(context),
                isPopup: true,
              ),
              _buildCustomButton(
                "Custom Hero Animation",
                Page1(),
                isCustom: true,
              ),
              Hero(
                tag: "hero1",
                child: ClipOval(
                  child: CustomLogo(
                    size: 60.0,
                  ),
                ),
              ),
              Hero(
                  tag: "hero2",
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      "Sample Hero",
                      style: TextStyle(fontSize: 14.0, color: Colors.black),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  _buildCustomButton(
    String text,
    Widget page, {
    bool isPopup = false,
    bool isCustom = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        height: 40.0,
        padding: EdgeInsets.all(10.0),
        color: Colors.lightBlue,
        onPressed: () {
          if (isPopup) {
            _onButtonTapPopup(page);
          } else if (isCustom) {
            _onButtonTapCustom(page);
          } else {
            _onButtonTap(page);
          }
        },
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 13.0, color: Colors.white),
        ),
      ),
    );
  }

  _buildPopUp(BuildContext context) {
    return Center(
      child: AlertDialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Hero(
          tag: "hero2",
          child: Material(
            child: Text('You are my hero.'),
          ),
        ),
        content: Container(
          child: Hero(
              tag: 'hero1',
              child: CustomLogo(
                size: 300.0,
              )),
        ),
        actions: <Widget>[
          UIUtils.getButton("Close", () {
            Get.back();
          }),
        ],
      ),
    );
  }
}
