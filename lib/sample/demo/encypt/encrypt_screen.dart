import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:encrypt/encrypt.dart' as Encrypted;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class EncryptScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _test();
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "encrypt",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/encrypt");
        },
      ),
      body: Center(
        child: UIUtils.getText("Check logcat"),
      ),
    );
  }

  void _test() {
    final plainText = "SomeP@assw0rd2021";

    final key = Encrypted.Key.fromUtf8("11111111112222222222333333333344");
    final iv = Encrypted.IV.fromLength(16);

    final encrypter = Encrypted.Encrypter(Encrypted.AES(key));

    final encrypted = encrypter.encrypt(plainText, iv: iv);
    final decrypted = encrypter.decrypt(encrypted, iv: iv);

    print(
        "plainText $plainText"); // Lorem ipsum dolor sit amet, consectetur adipiscing elit
    print(encrypted
        .base64); // R4PxiU3h8YoIRqVowBXm36ZcCeNeZ4s1OvVBTfFlZRdmohQqOpPQqD1YecJeZMAop/hZ4OxqgC1WtwvX/hP9mw==
    print(decrypted); // Lorem ipsum dolor sit amet, consectetur adipiscing elit
  }
}
