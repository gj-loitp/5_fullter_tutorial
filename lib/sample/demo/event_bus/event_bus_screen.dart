import 'dart:async';

import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/DurationUtil.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UrlLauncherUtils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/model/People.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'event_bus.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
        "event_bus",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/event_bus");
        },
      ),
      body: CupertinoScrollbar(
        thumbVisibility: true,
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