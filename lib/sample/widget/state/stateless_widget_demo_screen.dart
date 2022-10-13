import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class StatelessWidgetDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _myTextSize = 30.0;
    final double _myIconSize = 40.0;
    final TextStyle _myTextStyle =
        TextStyle(color: Colors.grey, fontSize: _myTextSize);

    var column = Column(
      // Makes the cards stretch in horizontal axis
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // Setup the card
        MyCard(
            // Setup the text
            title: Text(
              "Favorite",
              style: _myTextStyle,
            ),
            // Setup the icon
            icon: Icon(Icons.favorite, size: _myIconSize, color: Colors.red)),
        MyCard(
            title: Text(
              "Alarm",
              style: _myTextStyle,
            ),
            icon: Icon(Icons.alarm, size: _myIconSize, color: Colors.blue)),
        MyCard(
            title: Text(
              "Airport Shuttle",
              style: _myTextStyle,
            ),
            icon: Icon(Icons.airport_shuttle,
                size: _myIconSize, color: Colors.amber)),
        MyCard(
            title: Text(
              "Done",
              style: _myTextStyle,
            ),
            icon: Icon(Icons.done, size: _myIconSize, color: Colors.green)),
      ],
    );

    return Scaffold(
      appBar: UIUtils.getAppBar(
        "StatelessWidgetDemoScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Center(
          child: SingleChildScrollView(child: column),
        ),
      ),
    );
  }
}

// Create a reusable stateless base.widget
class MyCard extends StatelessWidget {
  final Widget icon;
  final Widget title;

  // Constructor. {} here denote that they are optional values i.e you can use as: MyCard()
  MyCard({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {
              print("onTap");
            },
            child: Column(
              children: [
                this.title,
                this.icon,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
