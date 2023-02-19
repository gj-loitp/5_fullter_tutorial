import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_background/object/palette.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widget/height.dart';

enum ShowCase {
  Christmas,
  HappyNewYear,
  Matrix;

  Widget getWidget(BuildContext context) {
    final size = MediaQuery.of(context).size;
    switch (this) {
      case ShowCase.Christmas:
        return Container(
          height: size.height,
          width: size.width,
          child: Center(
            child: Image.asset("assets/images/merry.png"),
          ),
        );
      case ShowCase.Matrix:
        return Container(
          height: size.height,
          width: size.width,
          child: Center(
            child: Image.asset("assets/images/matrix.png").pSymmetric(h: 40),
          ),
        );
      case ShowCase.HappyNewYear:
        return Container(
          width: size.width,
          child: Column(
            children: [
              Height(100),
              Center(
                child: Image.asset(
                  "assets/images/happy.png",
                  width: 300,
                ),
              ),
              Container(
                  constraints: BoxConstraints(maxWidth: 340),
                  child:
                      "Wishing you and your family a happy new year filled with hope, health, and happiness - with a generous sprinkle of fun!"
                          .text
                          .size(30)
                          .white
                          .center
                          .textStyle(GoogleFonts.secularOne())
                          .make()),
              Height(100),
            ],
          ),
        );
    }
  }

  String get showCaseName {
    switch (this) {
      case ShowCase.Matrix:
        return "Matrix";
      case ShowCase.Christmas:
        return "Christmas";
      case ShowCase.HappyNewYear:
        return "Happy New year!";
    }
  }

  Palette get palette {
    switch (this) {
      case ShowCase.Matrix:
        return const Palette(colors: [
          Color(0xff165B33),
          Color(0xff83ec00),
        ]);
      case ShowCase.Christmas:
        return const Palette(colors: [
          Color(0xff165B33),
          Color(0xffF8B229),
          Color(0xffEA4630),
          Color(0xffBB2528),
        ]);
      case ShowCase.HappyNewYear:
        return const Palette(colors: [
          Color(0xffFFDF00),
          Color(0xffFFCC00),
          Color(0xffECBD00),
          Color(0xffCC9900),
          Color(0xffB8860B),
          Color(0xffffffff),
          Color(0xffffffff),
          Color(0xffffffff),
        ]);
    }
  }
}
