import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'tab_1.dart';
import 'tab_2.dart';
import 'tab_3.dart';

class TabBarScreen extends StatefulWidget {
  @override
  TabBarScreenState createState() => TabBarScreenState();
}

class TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: UIUtils.getAppBar(
        "TabBarScreen",
            () => Get.back(),
        null,
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[
          Tab1(),
          Tab2(),
          Tab3(),
        ],
        // set the controller
        controller: _tabController,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: SafeArea(
          child: TabBar(
            tabs: <Tab>[
              Tab(
                icon: Icon(Icons.favorite),
                text: "Favorite",
              ),
              Tab(
                icon: Icon(Icons.adb),
                text: "adb",
              ),
              Tab(
                icon: Icon(Icons.airport_shuttle),
                text: "Shuttle",
              ),
            ],
            // setup the controller
            controller: _tabController,
          ),
        ),
      ),
    );
  }
}
