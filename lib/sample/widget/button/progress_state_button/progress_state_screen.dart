import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

class ProgressStateScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProgressStateScreenState();
  }
}

class _ProgressStateScreenState extends BaseStatefulState<ProgressStateScreen> {
  ButtonState _stateOnlyText = ButtonState.idle;
  ButtonState _stateTextWithIcon = ButtonState.idle;
  ButtonState _stateTextWithIconMinWidthState = ButtonState.idle;

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
        "ProgressStateScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/progress_state_button");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          buildCustomButton(),
          Container(
            height: 32,
          ),
          buildTextWithIcon(),
          Container(
            height: 32,
          ),
          buildTextWithIconWithMinState(),
        ],
      ),
    );
  }

  Widget buildCustomButton() {
    var progressTextButton = ProgressButton(
      stateWidgets: {
        ButtonState.idle: Text(
          "Idle",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        ButtonState.loading: Text(
          "Loading",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        ButtonState.fail: Text(
          "Fail",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        ButtonState.success: Text(
          "Success",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        )
      },
      stateColors: {
        ButtonState.idle: Colors.grey.shade400,
        ButtonState.loading: Colors.blue.shade300,
        ButtonState.fail: Colors.red.shade300,
        ButtonState.success: Colors.green.shade400,
      },
      onPressed: onPressedCustomButton,
      state: _stateOnlyText,
      padding: EdgeInsets.all(8.0),
    );
    return progressTextButton;
  }

  Widget buildTextWithIcon() {
    return ProgressButton.icon(iconedButtons: {
      ButtonState.idle: IconedButton(
          text: "Send",
          icon: Icon(Icons.send, color: Colors.white),
          color: Colors.deepPurple.shade500),
      ButtonState.loading:
          IconedButton(text: "Loading", color: Colors.deepPurple.shade700),
      ButtonState.fail: IconedButton(
          text: "Failed",
          icon: Icon(Icons.cancel, color: Colors.white),
          color: Colors.red.shade300),
      ButtonState.success: IconedButton(
          text: "",
          icon: Icon(
            Icons.check_circle,
            color: Colors.white,
          ),
          color: Colors.green.shade400)
    }, onPressed: onPressedIconWithText, state: _stateTextWithIcon);
  }

  Widget buildTextWithIconWithMinState() {
    return ProgressButton.icon(
      iconedButtons: {
        ButtonState.idle: IconedButton(
            text: "Send",
            icon: Icon(Icons.send, color: Colors.white),
            color: Colors.deepPurple.shade500),
        ButtonState.loading:
            IconedButton(text: "Loading", color: Colors.deepPurple.shade700),
        ButtonState.fail: IconedButton(
            text: "Failed",
            icon: Icon(Icons.cancel, color: Colors.white),
            color: Colors.red.shade300),
        ButtonState.success: IconedButton(
            icon: Icon(
              Icons.check_circle,
              color: Colors.white,
            ),
            color: Colors.green.shade400)
      },
      onPressed: onPressedIconWithMinWidthStateText,
      state: _stateTextWithIconMinWidthState,
      minWidthStates: [ButtonState.loading, ButtonState.success],
    );
  }

  void onPressedCustomButton() {
    setState(() {
      switch (_stateOnlyText) {
        case ButtonState.idle:
          _stateOnlyText = ButtonState.loading;
          break;
        case ButtonState.loading:
          _stateOnlyText = ButtonState.fail;
          break;
        case ButtonState.success:
          _stateOnlyText = ButtonState.idle;
          break;
        case ButtonState.fail:
          _stateOnlyText = ButtonState.success;
          break;
      }
    });
  }

  void onPressedIconWithText() {
    switch (_stateTextWithIcon) {
      case ButtonState.idle:
        _stateTextWithIcon = ButtonState.loading;
        Future.delayed(Duration(seconds: 1), () {
          setState(() {
            _stateTextWithIcon = Random.secure().nextBool()
                ? ButtonState.success
                : ButtonState.fail;
          });
        });

        break;
      case ButtonState.loading:
        break;
      case ButtonState.success:
        _stateTextWithIcon = ButtonState.idle;
        break;
      case ButtonState.fail:
        _stateTextWithIcon = ButtonState.idle;
        break;
    }
    setState(() {
      _stateTextWithIcon = _stateTextWithIcon;
    });
  }

  void onPressedIconWithMinWidthStateText() {
    switch (_stateTextWithIcon) {
      case ButtonState.idle:
        _stateTextWithIconMinWidthState = ButtonState.loading;
        Future.delayed(Duration(seconds: 1), () {
          setState(() {
            _stateTextWithIconMinWidthState = Random.secure().nextBool()
                ? ButtonState.success
                : ButtonState.fail;
          });
        });

        break;
      case ButtonState.loading:
        break;
      case ButtonState.success:
        _stateTextWithIconMinWidthState = ButtonState.idle;
        break;
      case ButtonState.fail:
        _stateTextWithIconMinWidthState = ButtonState.idle;
        break;
    }
    setState(() {
      _stateTextWithIconMinWidthState = _stateTextWithIconMinWidthState;
    });
  }
}
