import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/string_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class Example07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "dynamic tile sizes",
        () {
          Get.back();
        },
        null,
      ),
      body: StaggeredGridView.count(
        primary: false,
        crossAxisCount: 4,
        staggeredTiles: const <StaggeredTile>[
          StaggeredTile.fit(2),
          StaggeredTile.fit(2),
          StaggeredTile.fit(1),
          StaggeredTile.fit(3),
          StaggeredTile.fit(3),
          StaggeredTile.fit(1),
          StaggeredTile.fit(2),
          StaggeredTile.fit(2),
        ],
        children: const <Widget>[
          _Tile(StringConstants.URL_IMG_1, 1),
          _Tile(StringConstants.URL_IMG_2, 2),
          _Tile(StringConstants.URL_IMG_3, 3),
          _Tile(StringConstants.URL_IMG_4, 4),
          _Tile(StringConstants.URL_IMG_5, 5),
          _Tile(StringConstants.URL_IMG_6, 6),
          _Tile(StringConstants.URL_IMG_7, 7),
          _Tile(StringConstants.URL_IMG_1, 8),
        ],
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile(this.source, this.index);

  final String source;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(source),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: <Widget>[
                Text(
                  'Image number $index',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Vincent Van Gogh',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
