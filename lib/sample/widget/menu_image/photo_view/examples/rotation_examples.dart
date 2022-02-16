import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/widget/menu_image/photo_view/common/example_app_bar.dart';
import 'package:photo_view/photo_view.dart';

class GestureRotationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "GestureRotationExample",
        () {
          Get.back();
        },
        null,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(DimenConstants.marginPaddingMedium),
            child: const Text(
              "Example using option enableRotation, just pinch an rotate",
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 300.0,
              child: ClipRect(
                child: PhotoView(
                  imageProvider:
                      const AssetImage("assets/images/large-image.jpg"),
                  maxScale: PhotoViewComputedScale.covered,
                  initialScale: PhotoViewComputedScale.contained * 0.8,
                  enableRotation: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProgrammaticRotationExample extends StatefulWidget {
  @override
  _ProgrammaticRotationExampleState createState() =>
      _ProgrammaticRotationExampleState();
}

class _ProgrammaticRotationExampleState
    extends State<ProgrammaticRotationExample> {
  final PhotoViewController _controller = PhotoViewController();
  var _quarterTurns = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ProgrammaticRotationExample",
        () {
          Get.back();
        },
        null,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "Example without manual rotation, click the button to rotate",
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 300.0,
              child: ClipRect(
                child: PhotoView(
                  controller: _controller,
                  imageProvider:
                  const AssetImage("assets/images/large-image.jpg"),
                  maxScale: PhotoViewComputedScale.covered,
                  initialScale: PhotoViewComputedScale.contained * 0.8,
                  enableRotation: false,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.rotate_right),
        onPressed: _rotateRight90Degrees,
      ),
    );
  }

  void _rotateRight90Degrees() {
    // Set the rotation to either 0, 90, 180 or 270 degrees (value is in radians)
    _quarterTurns = _quarterTurns == 3 ? 0 : _quarterTurns + 1;
    _controller.rotation = math.pi / 2 * _quarterTurns;
  }
}
