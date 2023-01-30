import 'package:com.roy93group.flutter_tutorial/lib/common/const/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../../../../lib/util/ui_utils.dart';

class ShowCase extends StatelessWidget {
  const ShowCase({Key? key}) : super(key: key);

  static const kits = <Widget>[
    SpinKitRotatingCircle(color: Colors.white),
    SpinKitRotatingPlain(color: Colors.white),
    SpinKitChasingDots(color: Colors.white),
    SpinKitPumpingHeart(color: Colors.white),
    SpinKitPulse(color: Colors.white),
    SpinKitDoubleBounce(color: Colors.white),
    SpinKitWave(color: Colors.white, type: SpinKitWaveType.start),
    SpinKitWave(color: Colors.white, type: SpinKitWaveType.center),
    SpinKitWave(color: Colors.white, type: SpinKitWaveType.end),
    SpinKitPianoWave(color: Colors.white, type: SpinKitPianoWaveType.start),
    SpinKitPianoWave(color: Colors.white, type: SpinKitPianoWaveType.center),
    SpinKitPianoWave(color: Colors.white, type: SpinKitPianoWaveType.end),
    SpinKitThreeBounce(color: Colors.white),
    SpinKitThreeInOut(color: Colors.white),
    SpinKitWanderingCubes(color: Colors.white),
    SpinKitWanderingCubes(color: Colors.white, shape: BoxShape.circle),
    SpinKitCircle(color: Colors.white),
    SpinKitFadingFour(color: Colors.white),
    SpinKitFadingFour(color: Colors.white, shape: BoxShape.rectangle),
    SpinKitFadingCube(color: Colors.white),
    SpinKitCubeGrid(size: 51.0, color: Colors.white),
    SpinKitFoldingCube(color: Colors.white),
    SpinKitRing(color: Colors.white),
    SpinKitDualRing(color: Colors.white),
    SpinKitSpinningLines(color: Colors.white),
    SpinKitFadingGrid(color: Colors.white),
    SpinKitFadingGrid(color: Colors.white, shape: BoxShape.rectangle),
    SpinKitSquareCircle(color: Colors.white),
    SpinKitSpinningCircle(color: Colors.white),
    SpinKitSpinningCircle(color: Colors.white, shape: BoxShape.rectangle),
    SpinKitFadingCircle(color: Colors.white),
    SpinKitHourGlass(color: Colors.white),
    SpinKitPouringHourGlass(color: Colors.white),
    SpinKitPouringHourGlassRefined(color: Colors.white),
    SpinKitRipple(color: Colors.white),
    SpinKitDancingSquare(color: Colors.white),
    // SpinKitWaveSpinner(color: Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.appColor.withOpacity(0.9),
      appBar: UIUtils.getAppBar(
        "flutter_spinkit",
        () {
          Get.back();
        },
        null,
      ),
      body: GridView.builder(
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: context.adaptiveCrossAxisCount,
          mainAxisSpacing: 46,
          childAspectRatio: 2,
        ),
        padding: const EdgeInsets.only(top: 32, bottom: 64),
        itemCount: kits.length,
        itemBuilder: (context, index) => kits[index],
      ),
    );
  }
}

extension on BuildContext {
  int get adaptiveCrossAxisCount {
    final width = MediaQuery.of(this).size.width;
    if (width > 1024) {
      return 8;
    } else if (width > 720 && width < 1024) {
      return 6;
    } else if (width > 480) {
      return 4;
    } else if (width > 320) {
      return 3;
    }
    return 1;
  }
}
