import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'product_box.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class LayoutMultipleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "LayoutMultipleScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Container(
        color: Colors.white,
        child: MyHomePage(
          title: "MyHomePage",
        ),
      ),
      backgroundColor: Colors.white70,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({
    Key? key,
    this.title,
  }) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: <Widget>[
          ProductBox(
            name: "Suzuki",
            description: "Japan",
            price: 1000,
            image: "gallery1.jpg",
            color: Colors.red,
          ),
          ProductBox(
            name: "Ducati",
            description: "Italia",
            price: 2000,
            image: "iv.png",
            color: Colors.green,
          ),
          ProductBox(
            name: "Honda",
            description: "Japan",
            price: 3000,
            image: "gallery1.jpg",
            color: Colors.blueAccent,
          ),
          ProductBox(
            name: "BMW",
            description: "Germany",
            price: 4000,
            image: "iv.png",
          ),
          ProductBox(
            name: "Ferrari",
            description: "Italia",
            price: 5000,
            image: "iv.png",
          )
        ],
      ),
    );
  }
}
