import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/duration_util.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:hello_word/sample/model/people.dart';

import 'event_bus.dart';

class EventBusScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EventBusScreenState();
  }
}

class EventBusScreenState extends BaseStatefulState<EventBusScreen> {
  StreamSubscription? loginSubscription;

  @override
  void initState() {
    super.initState();

    _listen();
  }

  void _listen() {
    loginSubscription = eventBus.on<UserLoggedInEvent>().listen((event) {
      showSnackBarFull("Event bus", "new event: ${event.people.name}");
    });
  }

  @override
  void dispose() {
    super.dispose();
    loginSubscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "EventBusScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/event_bus");
        },
      ),
      body: CupertinoScrollbar(
        isAlwaysShown: true,
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          children: [
            UIUtils.getButton(
              "Click",
              () {
                People p = People('Loitp ' + DurationUtils.nowHHmm());
                eventBus.fire(UserLoggedInEvent(p));
              },
            ),
          ],
        ),
      ),
    );
  }
}
