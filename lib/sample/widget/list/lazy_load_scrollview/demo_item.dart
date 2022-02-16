import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';

class DemoItem extends StatelessWidget {
  final int position;

  const DemoItem(
    this.position, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(DimenConstants.marginPaddingSmall),
      width: Get.width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(DimenConstants.marginPaddingMedium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    height: 40.0,
                    width: 40.0,
                  ),
                  SizedBox(width: DimenConstants.marginPaddingMedium),
                  Text("Item $position"),
                ],
              ),
              Text("This is a text view"),
            ],
          ),
        ),
      ),
    );
  }
}
