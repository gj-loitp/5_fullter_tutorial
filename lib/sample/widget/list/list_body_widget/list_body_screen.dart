import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class ListBodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ListBodyScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: ListBodyWidget(),
    );
  }
}

class ListBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        ListBody(
          mainAxis: Axis.horizontal,
          reverse: false,
          children: List.generate(
            10,
            (index) {
              return Container(
                color: Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF)),
                width: 100,
                height: 100,
                child: Text(
                  'Item in ListBody horizontal || vertical',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
