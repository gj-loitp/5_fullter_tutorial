import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/chart/fl_chart/pie_chart/pie_chart_page.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/chart/fl_chart/radar_chart/radar_chart_page.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/chart/fl_chart/scatter_chart/scatter_chart_page.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/chart/fl_chart/utils/platform_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../lib/util/url_launcher_utils.dart';
import 'bar_chart/bar_chart_page.dart';
import 'bar_chart/bar_chart_page2.dart';
import 'bar_chart/bar_chart_page3.dart';
import 'line_chart/line_chart_page.dart';
import 'line_chart/line_chart_page2.dart';
import 'line_chart/line_chart_page3.dart';
import 'line_chart/line_chart_page4.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ChartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChartScreenState();
  }
}

class _ChartScreenState extends BaseStatefulState<ChartScreen> {
  int _currentPage = 0;

  final _controller = PageController(initialPage: 0);
  final _duration = const Duration(milliseconds: 300);
  final _curve = Curves.easeInOutCubic;
  final _pages = const [
    LineChartPage(),
    BarChartPage(),
    BarChartPage2(),
    PieChartPage(),
    LineChartPage2(),
    LineChartPage3(),
    LineChartPage4(),
    BarChartPage3(),
    ScatterChartPage(),
    RadarChartPage(),
  ];

  bool get isDesktopOrWeb => PlatformInfo().isDesktopOrWeb();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "fl_chart",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/fl_chart");
        },
      ),
      body: SafeArea(
        child: PageView(
          physics: isDesktopOrWeb
              ? const NeverScrollableScrollPhysics()
              : const AlwaysScrollableScrollPhysics(),
          controller: _controller,
          children: _pages,
        ),
      ),
      bottomNavigationBar: isDesktopOrWeb
          ? Container(
              padding: const EdgeInsets.all(16),
              color: Colors.transparent,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Visibility(
                    visible: _currentPage != 0,
                    child: FloatingActionButton(
                      onPressed: () => _controller.previousPage(
                          duration: _duration, curve: _curve),
                      child: const Icon(Icons.chevron_left_rounded),
                    ),
                  ),
                  const Spacer(),
                  Visibility(
                    visible: _currentPage != _pages.length - 1,
                    child: FloatingActionButton(
                      onPressed: () => _controller.nextPage(
                          duration: _duration, curve: _curve),
                      child: const Icon(Icons.chevron_right_rounded),
                    ),
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
