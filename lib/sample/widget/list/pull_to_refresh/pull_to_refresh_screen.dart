import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class PullToRefreshScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PullToRefreshScreenState();
  }
}

class _PullToRefreshScreenState extends BaseStatefulState<PullToRefreshScreen> {
  List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await Future.delayed(Duration(milliseconds: 1000));

    //add 5 item
    for (int i = 0; i < 5; i++) {
      items.add((items.length + 1).toString());
    }
    if (mounted) setState(() {});
    _refreshController.loadComplete();
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
        "PullToRefreshScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/pull_to_refresh");
        },
      ),
      body: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        // header: WaterDropHeader(),
        // header: MaterialClassicHeader(),
        header: WaterDropMaterialHeader(),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (c, i) => Card(child: Center(child: Text(items[i]))),
          itemExtent: 100.0,
          itemCount: items.length,
        ),
      ),
    );
  }
}
