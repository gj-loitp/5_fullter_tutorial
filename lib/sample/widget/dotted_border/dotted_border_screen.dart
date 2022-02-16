import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';

class DottedBorderScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DottedBorderScreenState();
  }
}

class _DottedBorderScreenState extends BaseStatefulState<DottedBorderScreen> {
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
        "DottedBorderScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/dotted_border");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          rectBorderWidget,
          SizedBox(height: DimenConstants.marginPaddingMedium),
          roundedRectBorderWidget,
          SizedBox(height: DimenConstants.marginPaddingMedium),
          customBorder,
          SizedBox(height: DimenConstants.marginPaddingMedium),
          roundStrokeCap,
          SizedBox(height: DimenConstants.marginPaddingMedium),
          solidBorder,
          SizedBox(height: DimenConstants.marginPaddingMedium),
          fullWidthPath,
          SizedBox(height: DimenConstants.marginPaddingMedium),
        ],
      ),
    );
  }

  /// Draw a border with rectangular border
  Widget get rectBorderWidget {
    return DottedBorder(
      dashPattern: [8, 4],
      strokeWidth: 2,
      child: Container(
        height: 200,
        width: 120,
        color: Colors.red,
      ),
    );
  }

  /// Draw a border with a rounded rectangular border
  Widget get roundedRectBorderWidget {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      padding: EdgeInsets.all(6),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Container(
          height: 200,
          width: 120,
          color: Colors.amber,
        ),
      ),
    );
  }

  /// Draw a border with custom path border
  Widget get customBorder {
    Path customPath = Path()
      ..moveTo(20, 20)
      ..lineTo(50, 100)
      ..lineTo(20, 200)
      ..lineTo(100, 100)
      ..lineTo(20, 20);

    return DottedBorder(
      customPath: (_) => customPath,
      color: Colors.indigo,
      dashPattern: [8, 4],
      strokeWidth: 2,
      child: Container(
        height: 220,
        width: 120,
        color: Colors.green.withAlpha(20),
      ),
    );
  }

  /// Set border stroke cap
  Widget get roundStrokeCap {
    return DottedBorder(
      dashPattern: [8, 4],
      strokeWidth: 2,
      strokeCap: StrokeCap.round,
      borderType: BorderType.RRect,
      radius: Radius.circular(5),
      child: Container(
        height: 200,
        width: 120,
        color: Colors.red,
      ),
    );
  }

  Widget get solidBorder {
    return DottedBorder(
      dashPattern: [4, 3],
      strokeWidth: 2,
      strokeCap: StrokeCap.round,
      child: Container(
        color: Colors.green,
        height: 200,
        width: 120,
      ),
    );
  }

  Widget get fullWidthPath {
    return DottedBorder(
      customPath: (size) {
        return Path()
          ..moveTo(0, 20)
          ..lineTo(size.width, 20);
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(),
      ),
    );
  }
}
