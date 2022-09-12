import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class RadioButtonScreen2 extends StatelessWidget {
  static const String _title = 'RadioButtonScreen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: UIUtils.getAppBar(
          _title,
          () {
            Get.back();
          },
          null,
        ),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

enum BestTutorSite { javatPoint, w3schools, tutorialAndExample }

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  BestTutorSite? _site = BestTutorSite.javatPoint;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('www.javatpoint.com'),
          leading: Radio(
            value: BestTutorSite.javatPoint,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('www.w3school.com'),
          leading: Radio(
            value: BestTutorSite.w3schools,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('www.tutorialandexample.com'),
          leading: Radio(
            value: BestTutorSite.tutorialAndExample,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
