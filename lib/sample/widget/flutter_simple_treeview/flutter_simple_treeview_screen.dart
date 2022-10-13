import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FlutterSimpleTreeViewScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterSimpleTreeViewScreenState();
  }
}

class _FlutterSimpleTreeViewScreenState
    extends BaseStatefulState<FlutterSimpleTreeViewScreen> {
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
        "flutter_simple_treeview",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/flutter_simple_treeview");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton("Web demo", () {
            UrlLauncherUtils.launchInWebViewWithJavaScript(
                "https://flutter_simple_treeview.surge.sh/");
          }),
          TreeView(nodes: [
            TreeNode(content: Text("root1")),
            TreeNode(
              content: Text("root2"),
              children: [
                TreeNode(content: Text("child21")),
                TreeNode(content: Text("child22")),
                TreeNode(
                  content: Text("root23"),
                  children: [
                    TreeNode(content: Text("child231")),
                  ],
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
