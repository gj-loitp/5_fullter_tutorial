import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/list/flutter_sticky_header/common.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class AnimatedHeaderExample extends StatelessWidget {
  const AnimatedHeaderExample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Animated header Example',
      slivers: [
        _StickyHeaderList(index: 0),
        _StickyHeaderList(index: 1),
        _StickyHeaderList(index: 2),
        _StickyHeaderList(index: 3),
      ],
    );
  }
}

class _StickyHeaderList extends StatelessWidget {
  const _StickyHeaderList({
    Key? key,
    this.index,
  }) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader.builder(
      builder: (context, state) => _AnimatedHeader(
        state: state,
        index: index,
      ),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) => ListTile(
            leading: CircleAvatar(
              child: Text('$index'),
            ),
            title: Text('List tile #$i'),
          ),
          childCount: 6,
        ),
      ),
    );
  }
}

class _AnimatedHeader extends StatelessWidget {
  const _AnimatedHeader({
    Key? key,
    this.state,
    this.index,
  }) : super(key: key);

  final int? index;
  final SliverStickyHeaderState? state;

  @override
  Widget build(BuildContext context) {
    return Header(
      index: index,
      color: Colors.lightBlue.withOpacity(1 - state!.scrollPercentage),
    );
  }
}
