import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ShapeOfViewScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShapeOfViewScreenState();
  }
}

class _ShapeOfViewScreenState extends BaseStatefulState<ShapeOfViewScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "EmptyScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/shape_of_view");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              ShapeOfView(
                elevation: 4,
                height: 300,
                shape: DiagonalShape(
                  angle: DiagonalAngle.deg(angle: 15),
                ),
                child: Stack(
                  children: [
                    KenBurns(
                      maxScale: 5,
                      child: Image.asset(
                        "assets/images/bkg_city.JPG",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 18, top: 120),
                          child: Text(
                            "Hugh Jackman",
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                                fontSize: 20,
                                shadows: [
                                  Shadow(
                                      color: Colors.black,
                                      blurRadius: 1,
                                      offset: Offset(1, 1)),
                                ]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, top: 6.0),
                          child: Text(
                            "Actor Producer",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 20,
                                shadows: [
                                  Shadow(
                                      color: Colors.black,
                                      blurRadius: 1,
                                      offset: Offset(1, 1)),
                                ]),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 230),
                child: ShapeOfView(
                  height: 100,
                  width: 100,
                  shape: CircleShape(borderColor: Colors.white, borderWidth: 3),
                  elevation: 12,
                  child: Image.asset(
                    "assets/images/loitp.JPG",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          ShapeOfView(
              shape: CircleShape(
                borderColor: Colors.white, //optional
                borderWidth: 2, //optional
              ),
              child: child()),
          ShapeOfView(
            shape: RoundRectShape(
              borderRadius: BorderRadius.circular(12),
              borderColor: Colors.white, //optional
              borderWidth: 2, //optional
            ),
            child: child(),
          ),
          ShapeOfView(
            shape: CutCornerShape(
              borderRadius: BorderRadius.circular(12),
            ),
            child: child(),
          ),
          ShapeOfView(
            shape: ArcShape(
                direction: ArcDirection.Outside,
                height: 20,
                position: ArcPosition.Bottom),
            child: child(),
          ),
          ShapeOfView(
            elevation: 4,
            height: 300,
            shape: DiagonalShape(
                position: DiagonalPosition.Bottom,
                direction: DiagonalDirection.Right,
                angle: DiagonalAngle.deg(angle: 10)),
            child: child(),
          ),
          ShapeOfView(
            shape: TriangleShape(
                percentBottom: 0.5, percentLeft: 0, percentRight: 0),
            child: child(),
          ),
          ShapeOfView(
            shape: BubbleShape(
                position: BubblePosition.Bottom,
                arrowPositionPercent: 0.5,
                borderRadius: 20,
                arrowHeight: 10,
                arrowWidth: 10),
            child: child(),
          ),
          ShapeOfView(
            shape: StarShape(noOfPoints: 5),
            child: child(),
          ),
          ShapeOfView(
            shape: PolygonShape(numberOfSides: 9),
            child: child(),
          ),
        ],
      ),
    );
  }

  Widget child() {
    return Image.asset(
      "assets/images/loitp.JPG",
      fit: BoxFit.cover,
    );
  }
}
