import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class TestPageScreen extends StatefulWidget {
  @override
  _TestPageScreenState createState() => _TestPageScreenState();
}

class _TestPageScreenState extends State<TestPageScreen> {
  @override
  void initState() {
    super.initState();
    // EasyLoading.dismiss();
    EasyLoading.showSuccess("Use in initState TestPage");
    EasyLoading.addStatusCallback(statusCallback);
  }

  @override
  void deactivate() {
    EasyLoading.dismiss();
    EasyLoading.removeCallback(statusCallback);
    super.deactivate();
  }

  void statusCallback(EasyLoadingStatus status) {
    print("Test EasyLoading Status $status");
  }

  void loadData() async {
    try {
      // await EasyLoading.show();
      await EasyLoading.show(
        status: "loading...",
        maskType: EasyLoadingMaskType.black,
      );

      //delay
      UIUtils.sleep(15, () {
        EasyLoading.dismiss();
      });
    } catch (e) {
      await EasyLoading.showError(e.toString());
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "TestPage",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: UIUtils.getButton(
          "loadData",
          () => {
            loadData()
            // await Future.delayed(Duration(seconds: 2));
            // EasyLoading.show(status: 'loading...');
            // await Future.delayed(Duration(seconds: 5));
            // EasyLoading.dismiss();
          },
        ),
      ),
    );
  }
}
