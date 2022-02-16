import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/widget/menu_image/photo_view/common/example_app_bar.dart';
import 'package:photo_view/photo_view.dart';

class DialogExample extends StatefulWidget {
  @override
  _DialogExampleState createState() => _DialogExampleState();
}

class _DialogExampleState extends State<DialogExample> {
  void openDialog(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              child: PhotoView(
                tightMode: true,
                imageProvider:
                    const AssetImage("assets/images/large-image.jpg"),
                heroAttributes: const PhotoViewHeroAttributes(tag: "someTag"),
              ),
            ),
          );
        },
      );

  void openBottomSheet(BuildContext context) => showBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        shape: const ContinuousRectangleBorder(),
        builder: (BuildContext context) {
          return PhotoViewGestureDetectorScope(
            axis: Axis.vertical,
            child: PhotoView(
              backgroundDecoration: BoxDecoration(
                color: Colors.red.withOpacity(0.5),
              ),
              imageProvider: const AssetImage("assets/images/large-image.jpg"),
              heroAttributes: const PhotoViewHeroAttributes(tag: "someTag"),
            ),
          );
        },
      );

  void openBottomSheetModal(BuildContext context) => showModalBottomSheet(
        context: context,
        shape: const ContinuousRectangleBorder(),
        builder: (BuildContext context) {
          return SafeArea(
            child: Container(
              height: 250,
              child: PhotoViewGestureDetectorScope(
                axis: Axis.vertical,
                child: PhotoView(
                  tightMode: true,
                  imageProvider:
                      const AssetImage("assets/images/large-image.jpg"),
                  heroAttributes: const PhotoViewHeroAttributes(tag: "someTag"),
                  backgroundDecoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "DialogExample",
        () {
          Get.back();
        },
        null,
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(color: Colors.red),
              ),
              ElevatedButton(
                child: const Text("Dialog"),
                onPressed: () => openDialog(context),
              ),
              const Divider(),
              ElevatedButton(
                child: const Text("Bottom sheet"),
                onPressed: () => openBottomSheet(context),
              ),
              const Divider(),
              ElevatedButton(
                child: const Text("Bottom sheet tight mode"),
                onPressed: () => openBottomSheetModal(context),
              ),
            ],
          );
        },
      ),
    );
  }
}
