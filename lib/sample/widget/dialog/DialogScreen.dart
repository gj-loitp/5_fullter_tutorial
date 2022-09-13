import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class DialogScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DialogScreenState();
  }
}

class _DialogScreenState extends BaseStatefulState {
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
        "DialogScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: [
          SimpleDialogWidget(),
          UIUtils.getButton("showAlertDialogWidget", () {
            showAlertDialogWidget(
              true,
              "title",
              Column(
                children: [
                  Text(
                    "abc",
                    style: TextStyle(decoration: TextDecoration.none),
                  ),
                  UIUtils.getButton("Click", () {}),
                  Image.asset(
                    "assets/images/bkg_city.JPG",
                    width: 350,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              "cancelTitle",
              () {},
              "okTitle",
              () {},
            );
          }),
          UIUtils.getButton("showAlertDialog", () {
            showAlertDialog(
              true,
              "title",
              "message",
              "cancelTitle",
              () {},
              "okTitle",
              () {},
            );
          }),
          UIUtils.getButton("showErrorDialog", () {
            showErrorDialog(
              "title",
              "message",
              "cancelTitle",
              () {},
            );
          }),
          UIUtils.getButton("showConfirmDialog", () {
            showConfirmDialog(
              "title",
              "message",
              "okTitle",
              () {},
            );
          }),
          UIUtils.getButton("showSnackBarFull", () {
            showSnackBarFull("title", "message");
          }),
          UIUtils.getButton("showSnackBarFullError", () {
            showSnackBarFullError("title", "message");
          }),
          UIUtils.getButton("showDialogSuccess", () {
            showDialogSuccess(
              Column(
                children: [
                  Text(
                    "abc",
                    style: TextStyle(decoration: TextDecoration.none),
                  ),
                  UIUtils.getButton("Click", () {}),
                  Image.asset(
                    "assets/images/bkg_city.JPG",
                    width: 350,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              true,
              () {},
            );
          }),
        ],
      ),
    );
  }
}

class SimpleDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UIUtils.getButton("Show SimpleDialog", () {
      _showSimpleDialog(context);
    });
  }

  void _showSimpleDialog(BuildContext context) {
    showDialog<Null>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('SimpleDialog title'),
          contentPadding: EdgeInsets.all(32),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('item 1'),
              onPressed: () {
                Get.back();
              },
            ),
            SimpleDialogOption(
              child: Text('item 2'),
              onPressed: () {
                Get.back();
              },
            ),
            SimpleDialogOption(
              child: Text('item 3'),
              onPressed: () {
                Get.back();
              },
            ),
            SimpleDialogOption(
              child: Text('item 4'),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        );
      },
    );
  }
}
