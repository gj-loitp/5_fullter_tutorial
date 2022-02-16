import 'package:drag_select_grid_view/drag_select_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/sample/widget/grid/drag_select_grid_view_sample/selectable_item.dart';
import 'package:hello_word/sample/widget/grid/drag_select_grid_view_sample/selection_app_bar.dart';

class DragSelectGridViewSampleScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DragSelectGridViewSampleScreenState();
  }
}

class _DragSelectGridViewSampleScreenState
    extends BaseStatefulState<DragSelectGridViewSampleScreen> {
  final controller = DragSelectGridViewController();

  @override
  void initState() {
    super.initState();
    controller.addListener(scheduleRebuild);
  }

  @override
  void dispose() {
    controller.removeListener(scheduleRebuild);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SelectionAppBar(
        selection: controller.value,
        title: const Text('DragSelectGridViewSampleScreen'),
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
          maxCrossAxisExtent: 150,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
      ),
    );
  }

  scheduleRebuild() => setState(() {});
}
