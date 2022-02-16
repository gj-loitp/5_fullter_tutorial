import 'package:flutter/material.dart';

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
        final snackBar = SnackBar(
          content: Text("Hello " + this.name!),
          backgroundColor: this.color,
        );
        Scaffold.of(context).showSnackBar(snackBar);
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
