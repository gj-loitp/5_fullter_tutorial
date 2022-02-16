import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/model/product.dart';

import 'rating_box.dart';

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
