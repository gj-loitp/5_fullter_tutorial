import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'custom_enum.dart';

class CustomMultiChildLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "CustomMultiChildLayoutScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: CustomMultiChildLayoutWidget(),
    );
  }
}

class CustomMultiChildLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomMultiChildLayout(
      delegate: _CustomLayout(margin: 5),
      children: <Widget>[
        LayoutId(
          id: CustomEnum.up,
          child: SizedBox(
            height: 50.0,
            width: 50.0,
            child: DecoratedBox(
                decoration: BoxDecoration(
              color: Colors.black,
            )),
          ),
        ),
        LayoutId(
          id: CustomEnum.center,
          child: SizedBox(
            height: 150.0,
            width: 50.0,
            child: DecoratedBox(
                decoration: BoxDecoration(
              color: Colors.red,
            )),
          ),
        ),
        LayoutId(
          id: CustomEnum.down,
          child: SizedBox(
            height: 50.0,
            width: 50.0,
            child: DecoratedBox(
                decoration: BoxDecoration(
              color: Colors.green,
            )),
          ),
        ),
        LayoutId(
          id: CustomEnum.right,
          child: SizedBox(
            height: 50.0,
            width: 50.0,
            child: DecoratedBox(
                decoration: BoxDecoration(
              color: Colors.limeAccent,
            )),
          ),
        ),
        LayoutId(
          id: CustomEnum.left,
          child: SizedBox(
            height: 50.0,
            width: 50.0,
            child: DecoratedBox(
                decoration: BoxDecoration(
              color: Colors.orange,
            )),
          ),
        ),
      ],
    );
  }
}

class _CustomLayout extends MultiChildLayoutDelegate {
  _CustomLayout({this.margin: 3.0});

  final double margin;

  @override
  void performLayout(Size size) {
    final BoxConstraints box = BoxConstraints.loose(size);
    Size upSize;
    Size centerSize;
    Size downSize;
    Size leftSize;
    Size rightSize;
    if (hasChild(CustomEnum.up)) {
      upSize = layoutChild(CustomEnum.up, box);
      final dx = (size.width - upSize.width) / 2;
      final dy = (size.height - upSize.height) / 2 - upSize.height - margin;
      positionChild(CustomEnum.up, Offset(dx, dy));
    }
    if (hasChild(CustomEnum.center)) {
      centerSize = layoutChild(CustomEnum.center, box);
      final dx = (size.width - centerSize.width) / 2;
      final dy = (size.height - centerSize.height) / 2;
      positionChild(CustomEnum.center, Offset(dx, dy));
    }
    if (hasChild(CustomEnum.down)) {
      downSize = layoutChild(CustomEnum.down, box);
      final dx = (size.width - downSize.width) / 2;
      final dy = (size.height - downSize.height) / 2 + downSize.height + margin;
      positionChild(CustomEnum.down, Offset(dx, dy));
    }
    if (hasChild(CustomEnum.left)) {
      leftSize = layoutChild(CustomEnum.left, box);
      final dx = (size.width - leftSize.width) / 2 - leftSize.width - margin;
      final dy = (size.height - leftSize.height) / 2;
      positionChild(CustomEnum.left, Offset(dx, dy));
    }
    if (hasChild(CustomEnum.right)) {
      rightSize = layoutChild(CustomEnum.right, box);
      final dx = (size.width - rightSize.width) / 2 + rightSize.width + margin;
      final dy = (size.height - rightSize.height) / 2;
      positionChild(CustomEnum.right, Offset(dx, dy));
    }
  }

  @override
  bool shouldRelayout(_CustomLayout oldDelegate) {
    return oldDelegate.margin != margin;
  }
}
