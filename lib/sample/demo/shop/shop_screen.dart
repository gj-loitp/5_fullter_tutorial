import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'db/db_shop.dart';
import 'product_box.dart';
import 'product_page_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
