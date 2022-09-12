import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class TabPageSelectorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List _listTab = ['Tab1', 'Tab2', 'Tab3', 'Tab4'];

    return Column(
      children: <Widget>[
        Expanded(
          child: Scaffold(
            appBar: UIUtils.getAppBar(
              "TabPageSelectorScreen",
              () {
                Get.back();
              },
              null,
            ),
            body: DefaultTabController(
              length: _listTab.length,
              child: Builder(builder: (context) {
                return Column(
                  children: <Widget>[
                    TabPageSelector(),
                    Expanded(
                      child: TabBarView(
                          children: _listTab.map((value) {
                        return UIUtils.getButton(
                          "TabBarView " + value,
                          () => Get.back(),
                        );
                      }).toList()),
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
