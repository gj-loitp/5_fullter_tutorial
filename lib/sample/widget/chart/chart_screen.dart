import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ChartScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LineCharts(),
            Padding(
              padding: const EdgeInsets.all(DimenConstants.marginPaddingMedium),
              child: Text(
                "Traffic Source Chart",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LineCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const cutOffYValue = 0.0;
    const yearTextStyle = TextStyle(fontSize: 12, color: Colors.black);

    return SizedBox(
      width: 360,
      height: 250,
      child: LineChart(
        LineChartData(
          lineTouchData: LineTouchData(enabled: false),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 1),
                FlSpot(1, 1),
                FlSpot(2, 3),
                FlSpot(3, 4),
                FlSpot(3, 5),
                FlSpot(4, 4)
              ],
              isCurved: true,
              barWidth: 2,
              colors: [
                Colors.black,
              ],
              belowBarData: BarAreaData(
                show: true,
                colors: [Colors.lightBlue.withOpacity(0.5)],
                cutOffY: cutOffYValue,
                applyCutOffY: true,
              ),
              aboveBarData: BarAreaData(
                show: true,
                colors: [Colors.lightGreen.withOpacity(0.5)],
                cutOffY: cutOffYValue,
                applyCutOffY: true,
              ),
              dotData: FlDotData(
                show: false,
              ),
            ),
          ],
          minY: 0,
          titlesData: FlTitlesData(
            bottomTitles: SideTitles(
                showTitles: true,
                reservedSize: 5,
                // textStyle: yearTextStyle,
                getTitles: (value) {
                  switch (value.toInt()) {
                    case 0:
                      return '2016';
                    case 1:
                      return '2017';
                    case 2:
                      return '2018';
                    case 3:
                      return '2019';
                    case 4:
                      return '2020';
                    default:
                      return '';
                  }
                }),
            leftTitles: SideTitles(
              showTitles: true,
              getTitles: (value) {
                return '\$ ${value + 100}';
              },
            ),
          ),
          axisTitleData: FlAxisTitleData(
              leftTitle:
                  AxisTitle(showTitle: true, titleText: 'Value', margin: 10),
              bottomTitle: AxisTitle(
                  showTitle: true,
                  margin: 10,
                  titleText: 'Year',
                  textStyle: yearTextStyle,
                  textAlign: TextAlign.right)),
          gridData: FlGridData(
            show: true,
            checkToShowHorizontalLine: (double value) {
              return value == 1 || value == 2 || value == 3 || value == 4;
            },
          ),
        ),
      ),
    );
  }
}
