import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/common/const/string_constants.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageGallerySaverScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImageGallerySaverScreenState();
  }
}

class _ImageGallerySaverScreenState
    extends BaseStatefulState<ImageGallerySaverScreen> {
  GlobalKey _globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _requestPermission();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ImageGallerySaverScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/image_gallery_saver");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          RepaintBoundary(
            key: _globalKey,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: UIUtils.getButton("Save Local Image", () {
              _saveScreen();
            }),
            width: 200,
            height: 44,
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: UIUtils.getButton("Save network image", () {
              _getHttp();
            }),
            width: 200,
            height: 44,
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: UIUtils.getButton("Save network video", () {
              _saveVideo();
            }),
            width: 200,
            height: 44,
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: UIUtils.getButton("Save Gif to gallery", () {
              _saveGif();
            }),
            width: 200,
            height: 44,
          ),
        ],
      ),
    );
  }

  _requestPermission() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
    ].request();

    final info = statuses[Permission.storage].toString();
    print(info);
    _toastInfo(info);
  }

  _saveScreen() async {
    RenderRepaintBoundary boundary =
        _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage();
    ByteData? byteData =
        await (image.toByteData(format: ui.ImageByteFormat.png));
    if (byteData != null) {
      final result =
          await ImageGallerySaver.saveImage(byteData.buffer.asUint8List());
      print(result);
      _toastInfo(result.toString());
    }
  }

  _getHttp() async {
    var response = await Dio().get(
        StringConstants.URL_IMG_1,
        options: Options(responseType: ResponseType.bytes));
    final result = await ImageGallerySaver.saveImage(
        Uint8List.fromList(response.data),
        quality: 60,
        name: "hello");
    print(result);
    _toastInfo("$result");
  }

  _saveGif() async {
    var appDocDir = await getTemporaryDirectory();
    String savePath = appDocDir.path + "/temp.gif";
    String fileUrl =
        "https://hyjdoc.oss-cn-beijing.aliyuncs.com/hyj-doc-flutter-demo-run.gif";
    await Dio().download(fileUrl, savePath);
    final result = await ImageGallerySaver.saveFile(savePath);
    print(result);
    _toastInfo("$result");
  }

  _saveVideo() async {
    var appDocDir = await getTemporaryDirectory();
    String savePath = appDocDir.path + "/temp.mp4";
    String fileUrl =
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4";
    await Dio().download(fileUrl, savePath, onReceiveProgress: (count, total) {
      print((count / total * 100).toStringAsFixed(0) + "%");
    });
    final result = await ImageGallerySaver.saveFile(savePath);
    print(result);
    _toastInfo("$result");
  }

  _toastInfo(String info) {
    showSnackBarFull(StringConstants.warning, info);
  }
}
