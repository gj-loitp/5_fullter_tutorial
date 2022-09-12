import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class Example02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Example02",
        () {
          Get.back();
        },
        null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) => Container(
            color: Colors.green,
            child: Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('$index'),
              ),
            ),
          ),
          staggeredTileBuilder: (int index) =>
              StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
      ),
    );
  }
}
