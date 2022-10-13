import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
