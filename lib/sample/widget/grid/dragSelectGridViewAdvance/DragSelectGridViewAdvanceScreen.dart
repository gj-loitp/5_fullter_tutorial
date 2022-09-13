import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:drag_select_grid_view/drag_select_grid_view.dart';
import 'package:flutter/material.dart';

import '../dragSelectGridViewSample/SelectableItem.dart';
import '../dragSelectGridViewSample/SelectionAppBar.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
