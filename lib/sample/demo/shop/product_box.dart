import 'package:com.roy93group.flutter_tutorial/sample/model/product.dart';
import 'package:flutter/material.dart';

import 'rating_box.dart';

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
    this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    print("ProductBox build product " + product!.name);

    return Container(
      padding: EdgeInsets.all(5),
      height: 200,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: Image.asset(
                "assets/images/" + this.product!.image,
                fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      product!.name + " - " + product!.rating.toString(),
                      style: TextStyle(fontSize: 22, color: Colors.green),
                    ),
                    Text(product!.description),
                    Text(
                      product!.price.toString(),
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                    ),
                    RatingBox(
                        product!.rating,
                        (rating) => {
                              print("RatingBox rating " + rating.toString()),
                              product!.rating = rating,
                            }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
