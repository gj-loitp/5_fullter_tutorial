import 'package:encrypt/encrypt.dart' as Encrypted;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';

class EncryptScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _test();
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "EncryptScreen",
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
