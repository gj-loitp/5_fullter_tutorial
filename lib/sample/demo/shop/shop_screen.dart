import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'product_box.dart';
import 'product_page_screen.dart';
import 'db/db_shop.dart';

class ShopScreen extends StatelessWidget {
  final listProduct = DbShop.getListProduct();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ShopScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ProductBox(
                product: listProduct[index],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductPageScreen(product: listProduct[index]),
                  ),
                );
              },
            );
          },
          itemCount: listProduct.length,
        ),
      ),
    );
  }
}
