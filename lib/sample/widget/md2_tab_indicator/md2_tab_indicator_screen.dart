import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class MD2TabIndicatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MD2TabIndicatorScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: IndicatorHomePage(),
    );
  }
}

class IndicatorHomePage extends StatefulWidget {
  IndicatorHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _IndicatorHomePageState createState() => _IndicatorHomePageState();
}

class _IndicatorHomePageState extends State<IndicatorHomePage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: 17,
          child: TabBar(
            physics: BouncingScrollPhysics(),
            labelStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            unselectedLabelStyle:
                TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.lightBlue,
            isScrollable: true,
            indicator: MD2Indicator(
              indicatorSize: MD2IndicatorSize.full,
              indicatorHeight: 10.0,
              indicatorColor: Colors.red,
            ),
            onTap: (index) {
              UIUtils.showSnackBar("Tap", "index $index");
            },
            tabs: <Widget>[
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Personal info",
              ),
              Tab(
                text: "Data & personalization",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
            ],
          ),
        ),
        UIUtils.buildHorizontalDivider(Colors.red, double.maxFinite, 1),
      ],
    );
  }
}

enum MD2IndicatorSize {
  tiny,
  normal,
  full,
}

class MD2Indicator extends Decoration {
  final double indicatorHeight;
  final Color indicatorColor;
  final MD2IndicatorSize indicatorSize;

  const MD2Indicator({
    required this.indicatorHeight,
    required this.indicatorColor,
    required this.indicatorSize,
  });

  @override
  _MD2Painter createBoxPainter([VoidCallback? onChanged]) {
    return new _MD2Painter(this, onChanged);
  }
}

class _MD2Painter extends BoxPainter {
  final MD2Indicator decoration;

  _MD2Painter(this.decoration, VoidCallback? onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);

    late Rect rect;
    if (decoration.indicatorSize == MD2IndicatorSize.full) {
      rect = Offset(offset.dx,
              (configuration.size!.height - decoration.indicatorHeight)) &
          Size(configuration.size!.width, decoration.indicatorHeight);
    } else if (decoration.indicatorSize == MD2IndicatorSize.normal) {
      rect = Offset(offset.dx + 6,
              (configuration.size!.height - decoration.indicatorHeight)) &
          Size(configuration.size!.width - 12, decoration.indicatorHeight);
    } else if (decoration.indicatorSize == MD2IndicatorSize.tiny) {
      rect = Offset(offset.dx + configuration.size!.width / 2 - 8,
              (configuration.size!.height - decoration.indicatorHeight)) &
          Size(16, decoration.indicatorHeight);
    }

    final Paint paint = Paint();
    paint.color = decoration.indicatorColor;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndCorners(rect,
            topRight: Radius.circular(45), topLeft: Radius.circular(45)),
        paint);
  }
}
