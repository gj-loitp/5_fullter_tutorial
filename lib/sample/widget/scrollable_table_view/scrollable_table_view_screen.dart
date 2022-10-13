import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_table_view/scrollable_table_view.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ScrollableTableViewScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScrollableTableViewScreenState();
  }
}

class _ScrollableTableViewScreenState
    extends BaseStatefulState<ScrollableTableViewScreen> {
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
        "ScrollableTableViewScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/scrollable_table_view");
        },
      ),
      body: Container(
        child: ScrollableTableView(
          columns: [
            "product_id",
            "product_name",
            "price",
            "1",
            "2",
            "3",
            "4",
            "5",
          ].map((column) {
            return TableViewColumn(
              label: column,
            );
          }).toList(),
          rows: [
            ["PR1000", "Milk", "20.00", "1", "2", "3", "4", "5"],
            ["PR1001", "Soap", "10.00", "1", "2", "3", "4", "5"],
            ["PR1001", "Soap", "10.00", "1", "2", "3", "4", "5"],
            ["PR1001", "Soap", "10.00", "1", "2", "3", "4", "5"],
            ["PR1001", "Soap", "10.00", "1", "2", "3", "4", "5"],
            ["PR1001", "Soap", "10.00", "1", "2", "3", "4", "5"],
            ["PR1001", "Soap", "10.00", "1", "2", "3", "4", "5"],
          ].map((record) {
            return TableViewRow(
              height: 60,
              cells: record.map((value) {
                return TableViewCell(
                  child: Text(value),
                );
              }).toList(),
            );
          }).toList(),
        ),
      ),
    );
  }
}
