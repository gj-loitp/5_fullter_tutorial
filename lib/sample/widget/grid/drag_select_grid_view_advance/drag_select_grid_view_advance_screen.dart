import 'dart:async';

import 'package:battery_plus/battery_plus.dart';
import 'package:drag_select_grid_view/drag_select_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:hello_word/sample/widget/grid/drag_select_grid_view_sample/selectable_item.dart';
import 'package:hello_word/sample/widget/grid/drag_select_grid_view_sample/selection_app_bar.dart';

class DragSelectGridViewAdvanceScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DragSelectGridViewAdvanceScreenState();
  }
}

class _DragSelectGridViewAdvanceScreenState
    extends BaseStatefulState<DragSelectGridViewAdvanceScreen> {
  final controller = DragSelectGridViewController();

  @override
  void initState() {
    super.initState();
    controller.addListener(scheduleRebuild);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SelectionAppBar(
        selection: controller.value,
        title: const Text('DragSelectGridViewAdvanceScreen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onPressed,
        child: Icon(Icons.select_all),
      ),
      body: DragSelectGridView(
        gridController: controller,
        padding: const EdgeInsets.all(8),
        itemCount: 90,
        itemBuilder: (context, index, selected) {
          return SelectableItem(
            index: index,
            color: Colors.blue,
            selected: selected,
          );
        },
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 80,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
      ),
    );
  }

  void onPressed() {
    controller.value = Selection({15, 20, 25, 21, 22, 17, 27, 19, 24, 29});
  }

  void scheduleRebuild() => setState(() {});

}
