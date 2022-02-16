import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class ThemeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ThemeScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black87),
        child: Center(
          child: Container(
            // use the theme accent color as background color for this base.widget
            color: Theme.of(context).accentColor,
            child: Text(
              'Hello World!',
              // Set text style as per theme
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
      ),
      floatingActionButton: Theme(
        // override the accent color of theme for this base.widget only
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(secondary: Colors.pinkAccent),
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
