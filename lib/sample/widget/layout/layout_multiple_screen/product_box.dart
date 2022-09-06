import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ProductBox extends StatelessWidget {
  ProductBox({
    Key? key,
    this.name,
    this.description,
    this.price,
    this.image,
    this.color,
  }) : super(key: key);

  final String? name;
  final String? description;
  final int? price;
  final String? image;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("onTap: " + this.name!);
        Get.snackbar('title', '"Hello " + this.name!');
      },
      child: Container(
        padding: EdgeInsets.all(15),
        height: 150,
        child: Card(
          color: this.color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                "assets/images/" + this.image!,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        this.name!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        this.description!,
                      ),
                      Text(
                        "Price: " + this.price.toString(),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
