import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/model/people.dart';

class SyntaxScreen extends StatelessWidget {
  void test() {
    print("Hello MyApp");
    print(1 / 2);

    bool b = 1 == 2;
    print(b);

    var mapping = {'id': 1, 'name': 'Dart'};
    print(mapping);
    print(mapping.keys);
    print(mapping.values);
    print(mapping.entries.first);
    mapping.values.forEach((element) {
      print(element);
    });
    mapping.forEach((key, value) {
      if (key == "name") {
        print(value);
      }
    });

    print("--------------------------------------------");
    dynamic a = 123;
    print(a);
    a = "One two three";
    print(a);

    print("--------------------------------------------");
    for (int i = 0; i < 5; i++) {
      if (i % 2 == 0) {
        print("-> " + i.toString());
      }
    }

    print("--------------------------------------------");
    void add(int a, int b) {
      print("Sum: " + (a + b).toString());
    }

    add(6, 9);

    print("--------------------------------------------");
    People p = People("People 123456");
    p.showData();
  }

  @override
  Widget build(BuildContext context) {
    test();
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "SyntaxScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: UIUtils.getText("Check logcat"),
      ),
    );
  }
}
