import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

const List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(3, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(4, 1),
];

const List<Widget> _tiles = <Widget>[
  _Example01Tile(Colors.green, Icons.widgets),
  _Example01Tile(Colors.lightBlue, Icons.wifi),
  _Example01Tile(Colors.amber, Icons.panorama_wide_angle),
  _Example01Tile(Colors.brown, Icons.map),
  _Example01Tile(Colors.deepOrange, Icons.send),
  _Example01Tile(Colors.indigo, Icons.airline_seat_flat),
  _Example01Tile(Colors.red, Icons.bluetooth),
  _Example01Tile(Colors.pink, Icons.battery_alert),
  _Example01Tile(Colors.purple, Icons.desktop_windows),
  _Example01Tile(Colors.blue, Icons.radio),
];

class Example01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar("Example01", () {
        Get.back();
      }, null),
      body: Padding(
        padding: const EdgeInsets.all(DimenConstants.marginPaddingSmall),
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          staggeredTiles: _staggeredTiles,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          padding: const EdgeInsets.all(4),
          children: _tiles,
        ),
      ),
    );
  }
}

class _Example01Tile extends StatelessWidget {
  const _Example01Tile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(DimenConstants.marginPaddingMedium),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
