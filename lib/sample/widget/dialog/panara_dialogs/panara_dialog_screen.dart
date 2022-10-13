import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:panara_dialogs/panara_dialogs.dart';

import '../../../../lib/util/url_launcher_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class PanaraDialogScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PanaraDialogScreenState();
  }
}

class _PanaraDialogScreenState extends BaseStatefulState {
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
        "PanaraDialogScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/panara_dialogs");
        },
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "PanaraInfoDialog & It's Variants",
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              PanaraInfoDialog.show(
                context,
                title: "Hello",
                message: "This is the Panara Info Dialog Success.",
                buttonText: "Okay",
                onTapDismiss: () {
                  Navigator.pop(context);
                },
                panaraDialogType: PanaraDialogType.success,
              );
            },
            child: const Text("Show Success Info"),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              PanaraInfoDialog.showAnimatedGrow(
                context,
                title: "Hello",
                message: "This is the Panara Info Dialog Normal.",
                buttonText: "Okay",
                onTapDismiss: () {
                  Navigator.pop(context);
                },
                panaraDialogType: PanaraDialogType.normal,
              );
            },
            child: const Text("Show Normal Info"),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              PanaraInfoDialog.showAnimatedGrow(
                context,
                title: "Hello",
                message: "This is the Panara Info Dialog Warning.",
                buttonText: "Okay",
                onTapDismiss: () {
                  Navigator.pop(context);
                },
                panaraDialogType: PanaraDialogType.warning,
              );
            },
            child: const Text("Show Warning Info"),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              PanaraInfoDialog.showAnimatedGrow(
                context,
                title: "Hello",
                message: "This is the Panara Info Dialog Error.",
                buttonText: "Okay",
                onTapDismiss: () {
                  Navigator.pop(context);
                },
                panaraDialogType: PanaraDialogType.error,
              );
            },
            child: const Text("Show Error Info"),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "PanaraConfirmDialog & It's Variants",
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              PanaraConfirmDialog.showAnimatedGrow(
                context,
                title: "Hello",
                message: "This is the Panara Confirm Dialog Success.",
                confirmButtonText: "Confirm",
                cancelButtonText: "Cancel",
                onTapCancel: () {
                  Navigator.pop(context);
                },
                onTapConfirm: () {
                  Navigator.pop(context);
                },
                panaraDialogType: PanaraDialogType.success,
              );
            },
            child: const Text("Show Success Confirm"),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              PanaraConfirmDialog.showAnimatedGrow(
                context,
                title: "Hello",
                message: "This is the Panara Confirm Dialog Normal.",
                confirmButtonText: "Confirm",
                cancelButtonText: "Cancel",
                onTapCancel: () {
                  Navigator.pop(context);
                },
                onTapConfirm: () {
                  Navigator.pop(context);
                },
                panaraDialogType: PanaraDialogType.normal,
              );
            },
            child: const Text("Show Normal Confirm"),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              PanaraConfirmDialog.showAnimatedGrow(
                context,
                title: "Hello",
                message: "This is the Panara Confirm Dialog Warning.",
                confirmButtonText: "Confirm",
                cancelButtonText: "Cancel",
                onTapCancel: () {
                  Navigator.pop(context);
                },
                onTapConfirm: () {
                  Navigator.pop(context);
                },
                panaraDialogType: PanaraDialogType.warning,
              );
            },
            child: const Text("Show Warning Confirm"),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              PanaraConfirmDialog.showAnimatedGrow(
                context,
                title: "Hello",
                message: "This is the Panara Confirm Dialog Error.",
                confirmButtonText: "Confirm",
                cancelButtonText: "Cancel",
                onTapCancel: () {
                  Navigator.pop(context);
                },
                onTapConfirm: () {
                  Navigator.pop(context);
                },
                panaraDialogType: PanaraDialogType.error,
              );
            },
            child: const Text("Show Error Confirm"),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
