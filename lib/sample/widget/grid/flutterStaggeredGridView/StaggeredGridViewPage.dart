import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import 'TileWidget.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class StaggeredGridViewPage extends StatelessWidget {
  const StaggeredGridViewPage.count({
    required this.title,
    required this.crossAxisCount,
    required this.tiles,
    this.mainAxisSpacing = 4,
    this.crossAxisSpacing = 4,
  })  : _staggeredGridViewMode = _StaggeredGridViewMode.count,
        maxCrossAxisExtent = null;

  const StaggeredGridViewPage.extent({
    required this.title,
    required this.maxCrossAxisExtent,
    required this.tiles,
    this.mainAxisSpacing = 4,
    this.crossAxisSpacing = 4,
  })  : _staggeredGridViewMode = _StaggeredGridViewMode.extent,
        crossAxisCount = null;

  static const EdgeInsetsGeometry padding = EdgeInsets.symmetric(horizontal: 4);

  final String title;
  final List<StaggeredTile> tiles;
  final int? crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double? maxCrossAxisExtent;
  final _StaggeredGridViewMode _staggeredGridViewMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UIUtils.getAppBar(
          title,
          () {
            Get.back();
          },
          null,
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: _buildStaggeredGridView(context)));
  }

  Widget _buildStaggeredGridView(BuildContext context) {
    switch (_staggeredGridViewMode) {
      case _StaggeredGridViewMode.count:
        return StaggeredGridView.countBuilder(
          crossAxisCount: crossAxisCount!,
          itemCount: tiles.length,
          itemBuilder: _getChild,
          mainAxisSpacing: mainAxisSpacing,
          crossAxisSpacing: crossAxisSpacing,
          padding: padding,
          staggeredTileBuilder: _getStaggeredTile,
        );
      default:
        return StaggeredGridView.extentBuilder(
          maxCrossAxisExtent: maxCrossAxisExtent!,
          itemCount: tiles.length,
          itemBuilder: _getChild,
          mainAxisSpacing: mainAxisSpacing,
          crossAxisSpacing: crossAxisSpacing,
          padding: padding,
          staggeredTileBuilder: _getStaggeredTile,
        );
    }
  }

  StaggeredTile? _getStaggeredTile(int i) {
    return i >= tiles.length ? null : tiles[i];
  }

  TileWidget _getChild(BuildContext context, int index) {
    return TileWidget(key: ObjectKey(index), index: index);
  }
}

enum _StaggeredGridViewMode { count, extent }
