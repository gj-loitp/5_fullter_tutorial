import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../lib/util/url_launcher_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class AwesomeDialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "awesome_dialog",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/awesome_dialog");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          AnimatedButton(
            text: 'Info Dialog fixed width and square buttons',
            pressEvent: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.info,
                borderSide: const BorderSide(
                  color: Colors.green,
                  width: 2,
                ),
                width: 280,
                buttonsBorderRadius: const BorderRadius.all(
                  Radius.circular(2),
                ),
                dismissOnTouchOutside: true,
                dismissOnBackKeyPress: false,
                onDismissCallback: (type) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Dismissed by $type'),
                    ),
                  );
                },
                headerAnimationLoop: false,
                animType: AnimType.bottomSlide,
                title: 'INFO',
                desc: 'This Dialog can be dismissed touching outside',
                showCloseIcon: true,
                btnCancelOnPress: () {},
                btnOkOnPress: () {},
              ).show();
            },
          ),
          const SizedBox(
            height: 16,
          ),
          AnimatedButton(
            text: 'Warning Dialog With Custom BTN Style',
            pressEvent: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.warning,
                headerAnimationLoop: false,
                animType: AnimType.bottomSlide,
                title: 'Question',
                desc: 'Dialog description here...',
                buttonsTextStyle: const TextStyle(color: Colors.black),
                showCloseIcon: true,
                btnCancelOnPress: () {},
                btnOkOnPress: () {},
              ).show();
            },
          ),
          const SizedBox(
            height: 16,
          ),
          AnimatedButton(
            text: 'Info Reverse Dialog Without buttons',
            pressEvent: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.infoReverse,
                headerAnimationLoop: true,
                animType: AnimType.bottomSlide,
                title: 'INFO Reversed',
                reverseBtnOrder: true,
                btnOkOnPress: () {},
                btnCancelOnPress: () {},
                desc:
                    'Lorem ipsum dolor sit amet consectetur adipiscing elit eget ornare tempus, vestibulum sagittis rhoncus felis hendrerit lectus ultricies duis vel, id morbi cum ultrices tellus metus dis ut donec. Ut sagittis viverra venenatis eget euismod faucibus odio ligula phasellus,',
              ).show();
            },
          ),
          const SizedBox(
            height: 16,
          ),
          AnimatedButton(
            text: 'Warning Dialog',
            color: Colors.orange,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.warning,
                headerAnimationLoop: false,
                animType: AnimType.topSlide,
                showCloseIcon: true,
                closeIcon: const Icon(Icons.close_fullscreen_outlined),
                title: 'Warning',
                desc:
                    'Dialog description here..................................................',
                btnCancelOnPress: () {},
                onDismissCallback: (type) {
                  debugPrint('Dialog Dismiss from callback $type');
                },
                btnOkOnPress: () {},
              ).show();
            },
          ),
          const SizedBox(
            height: 16,
          ),
          AnimatedButton(
            text: 'Error Dialog',
            color: Colors.red,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.error,
                animType: AnimType.rightSlide,
                headerAnimationLoop: false,
                title: 'Error',
                desc:
                    'Dialog description here..................................................',
                btnOkOnPress: () {},
                btnOkIcon: Icons.cancel,
                btnOkColor: Colors.red,
              ).show();
            },
          ),
          const SizedBox(
            height: 16,
          ),
          AnimatedButton(
            text: 'Success Dialog',
            color: Colors.green,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                animType: AnimType.leftSlide,
                headerAnimationLoop: false,
                dialogType: DialogType.success,
                showCloseIcon: true,
                title: 'Succes',
                desc:
                    'Dialog description here..................................................',
                btnOkOnPress: () {
                  debugPrint('OnClcik');
                },
                btnOkIcon: Icons.check_circle,
                onDismissCallback: (type) {
                  debugPrint('Dialog Dissmiss from callback $type');
                },
              ).show();
            },
          ),
          const SizedBox(
            height: 16,
          ),
          AnimatedButton(
            text: 'No Header Dialog',
            color: Colors.cyan,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                headerAnimationLoop: false,
                dialogType: DialogType.noHeader,
                title: 'No Header',
                desc:
                    'Dialog description here..................................................',
                btnOkOnPress: () {
                  debugPrint('OnClcik');
                },
                btnOkIcon: Icons.check_circle,
              ).show();
            },
          ),
          const SizedBox(
            height: 16,
          ),
          AnimatedButton(
            text: 'Custom Body Dialog',
            color: Colors.blueGrey,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                animType: AnimType.scale,
                dialogType: DialogType.info,
                body: const Center(
                  child: Text(
                    'If the body is specified, then title and description will be ignored, this allows to further customize the dialogue.',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                title: 'This is Ignored',
                desc: 'This is also Ignored',
              ).show();
            },
          ),
          const SizedBox(
            height: 16,
          ),
          AnimatedButton(
            text: 'Auto Hide Dialog',
            color: Colors.purple,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.infoReverse,
                animType: AnimType.scale,
                title: 'Auto Hide Dialog',
                desc: 'AutoHide after 2 seconds',
                autoHide: const Duration(seconds: 2),
                onDismissCallback: (type) {
                  debugPrint('Dialog Dissmiss from callback $type');
                },
              ).show();
            },
          ),
          const SizedBox(
            height: 16,
          ),
          AnimatedButton(
            text: 'Testing Dialog',
            color: Colors.orange,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                keyboardAware: true,
                dismissOnBackKeyPress: false,
                dialogType: DialogType.warning,
                animType: AnimType.bottomSlide,
                btnCancelText: "Cancel Order",
                btnOkText: "Yes, I will pay",
                title: 'Continue to pay?',
                // padding: const EdgeInsets.all(5.0),
                desc:
                    'Please confirm that you will pay 3000 INR within 30 mins. Creating orders without paying will create penalty charges, and your account may be disabled.',
                btnCancelOnPress: () {},
                btnOkOnPress: () {},
              ).show();
            },
          ),
          const SizedBox(
            height: 16,
          ),
          AnimatedButton(
            text: 'Body with Input',
            color: Colors.blueGrey,
            pressEvent: () {
              late AwesomeDialog dialog;
              dialog = AwesomeDialog(
                context: context,
                animType: AnimType.scale,
                dialogType: DialogType.info,
                keyboardAware: true,
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Form Data',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        elevation: 0,
                        color: Colors.blueGrey.withAlpha(40),
                        child: TextFormField(
                          autofocus: true,
                          minLines: 1,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Title',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        elevation: 0,
                        color: Colors.blueGrey.withAlpha(40),
                        child: TextFormField(
                          autofocus: true,
                          keyboardType: TextInputType.multiline,
                          minLines: 2,
                          maxLines: null,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Description',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AnimatedButton(
                        isFixedHeight: false,
                        text: 'Close',
                        pressEvent: () {
                          dialog.dismiss();
                        },
                      )
                    ],
                  ),
                ),
              )..show();
            },
          ),
          const SizedBox(
            height: 16,
          ),
          AnimatedButton(
            text: 'Passing Data Back from Dialog',
            pressEvent: () async {
              final dismissMode = await AwesomeDialog(
                context: context,
                dialogType: DialogType.noHeader,
                buttonsBorderRadius: const BorderRadius.all(
                  Radius.circular(2),
                ),
                animType: AnimType.rightSlide,
                title: 'Passing Data Back',
                titleTextStyle: const TextStyle(
                  fontSize: 32,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                ),
                desc: 'Dialog description here...',
                showCloseIcon: true,
                btnCancelOnPress: () {},
                btnOkOnPress: () {},
                autoDismiss: false,
                onDismissCallback: (type) {
                  Navigator.of(context).pop(type);
                },
                barrierColor: Colors.purple[900]?.withOpacity(0.54),
              ).show();

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Dismissed by $dismissMode'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
