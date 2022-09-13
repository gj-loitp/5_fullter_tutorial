import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'StaggeredGridViewPage.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
const List<StaggeredTile> _tiles = <StaggeredTile>[
  StaggeredTile.extent(1, 50),
  StaggeredTile.extent(1, 180),
  StaggeredTile.extent(1, 160),
  StaggeredTile.extent(1, 140),
  StaggeredTile.extent(1, 120),
  StaggeredTile.extent(1, 130),
  StaggeredTile.extent(1, 50),
  StaggeredTile.extent(1, 60),
  StaggeredTile.extent(1, 130),
  StaggeredTile.extent(1, 140),
  StaggeredTile.extent(1, 60),
  StaggeredTile.extent(1, 150),
];

class StaggeredCountExtentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const StaggeredGridViewPage.count(
        title: 'Staggered (Count, Extent)', crossAxisCount: 2, tiles: _tiles);
  }
}
