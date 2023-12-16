import 'package:com.roy93group.flutter_tutorial/lib/common/const/color_constants.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String text;

  const ResultScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstants.appColor,
          title: const Text('Result'),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
}
