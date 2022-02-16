import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screen_lock/configurations/input_button_config.dart';
import 'package:flutter_screen_lock/configurations/screen_lock_config.dart';
import 'package:flutter_screen_lock/configurations/secret_config.dart';
import 'package:flutter_screen_lock/configurations/secrets_config.dart';
import 'package:flutter_screen_lock/functions.dart';
import 'package:flutter_screen_lock/input_controller.dart';
import 'package:flutter_screen_lock/screen_lock.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:local_auth/local_auth.dart';

class FlutterScreenLockScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterScreenLockScreenState();
  }
}

class _FlutterScreenLockScreenState
    extends BaseStatefulState<FlutterScreenLockScreen> {
  Future<void> localAuth(BuildContext context) async {
    final localAuth = LocalAuthentication();
    final didAuthenticate = await localAuth.authenticate(
      localizedReason: 'Please authenticate',
      biometricOnly: true,
    );
    if (didAuthenticate) {
      Navigator.pop(context);
    }
  }

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
        "https://pub.dev/packages/flutter_screen_lock",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://github.com/tplloi/fullter_hello_word");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getText("Password 1234 || 123456"),
          ElevatedButton(
            onPressed: () => showDialog<void>(
              context: context,
              builder: (context) {
                return const ScreenLock(correctString: '1234');
              },
            ),
            child: const Text('Manually open'),
          ),
          ElevatedButton(
            onPressed: () => screenLock<void>(
              context: context,
              correctString: '1234',
              canCancel: false,
            ),
            child: const Text('Not cancelable'),
          ),
          ElevatedButton(
            onPressed: () {
              // Define it to control the confirmation state with its own events.
              final inputController = InputController();
              screenLock<void>(
                context: context,
                correctString: '',
                confirmation: true,
                inputController: inputController,
                didConfirmed: (matchedText) {
                  print(matchedText);
                },
                footer: TextButton(
                  onPressed: () {
                    // Release the confirmation state and return to the initial input state.
                    inputController.unsetConfirmed();
                  },
                  child: const Text('Return enter mode.'),
                ),
              );
            },
            child: const Text('Confirm mode'),
          ),
          ElevatedButton(
            onPressed: () => screenLock<void>(
              context: context,
              correctString: '1234',
              customizedButtonChild: const Icon(
                Icons.fingerprint,
              ),
              customizedButtonTap: () async {
                await localAuth(context);
              },
              didOpened: () async {
                await localAuth(context);
              },
            ),
            child: const Text(
              'use local_auth \n(Show local_auth when opened)',
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () => screenLock<void>(
              context: context,
              correctString: '123456',
              canCancel: false,
              footer: Container(
                padding: const EdgeInsets.only(top: 10),
                child: OutlinedButton(
                  child: const Text('Cancel'),
                  onPressed: () => Navigator.pop(context),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
            ),
            child: const Text('Using footer'),
          ),
          ElevatedButton(
            onPressed: () {
              screenLock<void>(
                context: context,
                title: const Text('change title'),
                confirmTitle: const Text('change confirm title'),
                correctString: '',
                confirmation: true,
                screenLockConfig: const ScreenLockConfig(
                  backgroundColor: Colors.deepOrange,
                ),
                secretsConfig: SecretsConfig(
                  spacing: 15, // or spacingRatio
                  padding: const EdgeInsets.all(40),
                  secretConfig: SecretConfig(
                    borderColor: Colors.amber,
                    borderSize: 2.0,
                    disabledColor: Colors.black,
                    enabledColor: Colors.amber,
                    height: 15,
                    width: 15,
                    build: (context, {required config, required enabled}) {
                      return SizedBox(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: enabled
                                ? config.enabledColor
                                : config.disabledColor,
                            border: Border.all(
                              width: config.borderSize,
                              color: config.borderColor,
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                          width: config.width,
                          height: config.height,
                        ),
                        width: config.width,
                        height: config.height,
                      );
                    },
                  ),
                ),
                inputButtonConfig: InputButtonConfig(
                    textStyle:
                        InputButtonConfig.getDefaultTextStyle(context).copyWith(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                    buttonStyle: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      backgroundColor: Colors.deepOrange,
                    ),
                    displayStrings: [
                      '零',
                      '壱',
                      '弐',
                      '参',
                      '肆',
                      '伍',
                      '陸',
                      '質',
                      '捌',
                      '玖'
                    ]),
                cancelButton: const Icon(Icons.close),
                deleteButton: const Icon(Icons.delete),
              );
            },
            child: const Text('Customize styles'),
          ),
        ],
      ),
    );
  }
}
