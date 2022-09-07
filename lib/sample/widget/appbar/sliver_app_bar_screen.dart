import 'package:flutter/material.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/constants.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class SliverAppBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              "SliverAppBarScreen",
            ),
            snap: true,
            floating: true,
            pinned: true,
            stretch: true,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Image.network(
                Constants.dummyImageLink,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text(
                "Body",
                style: TextStyle(
                  fontSize: 44,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
