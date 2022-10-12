import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/model/Product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'rating_box.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ProductPageScreen extends StatelessWidget {
  ProductPageScreen({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ProductPageScreen " + product.name,
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/" + product.image),
              Text(product.name),
              Text(product.description),
              Text(product.price.toString()),
              RatingBox(
                product.rating,
                (rating) => {
                  print("ProductPage rating " + rating.toString()),
                  product.rating = rating,
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
