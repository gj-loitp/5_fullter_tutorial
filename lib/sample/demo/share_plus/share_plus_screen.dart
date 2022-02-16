import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:hello_word/sample/demo/share_plus/image_previews.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';

class SharePlusScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SharePlusScreenState();
  }
}

class _SharePlusScreenState extends BaseStatefulState<SharePlusScreen> {
  String text = '';
  String subject = '';
  List<String> imagePaths = [];

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
        "SharePlusScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/share_plus");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Share text:',
              hintText: 'Enter some text and/or link to share',
            ),
            maxLines: 2,
            onChanged: (String value) => setState(() {
              text = value;
            }),
          ),
          TextField(
            decoration: const InputDecoration(
              labelText: 'Share subject:',
              hintText: 'Enter subject to share (optional)',
            ),
            maxLines: 2,
            onChanged: (String value) => setState(() {
              subject = value;
            }),
          ),
          const Padding(padding: EdgeInsets.only(top: 12.0)),
          ImagePreviews(imagePaths, onDelete: _onDeleteImage),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Add image'),
            onTap: () async {
              final imagePicker = ImagePicker();
              final pickedFile = await imagePicker.getImage(
                source: ImageSource.gallery,
              );
              if (pickedFile != null) {
                setState(() {
                  imagePaths.add(pickedFile.path);
                });
              }
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 12.0)),
          Builder(
            builder: (BuildContext context) {
              return ElevatedButton(
                onPressed: text.isEmpty && imagePaths.isEmpty
                    ? null
                    : () => _onShare(context),
                child: const Text('Share plus'),
              );
            },
          ),
        ],
      ),
    );
  }

  void _onDeleteImage(int position) {
    setState(() {
      imagePaths.removeAt(position);
    });
  }

  void _onShare(BuildContext context) async {
    // A builder is used to retrieve the context immediately
    // surrounding the ElevatedButton.
    //
    // The context's `findRenderObject` returns the first
    // RenderObject in its descendent tree when it's not
    // a RenderObjectWidget. The ElevatedButton's RenderObject
    // has its position and size after it's built.
    final box = context.findRenderObject() as RenderBox?;

    if (imagePaths.isNotEmpty) {
      await Share.shareFiles(imagePaths,
          text: text,
          subject: subject,
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
    } else {
      await Share.share(text,
          subject: subject,
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
    }
  }
}
