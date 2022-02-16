import 'package:flutter/material.dart';

class TabBarScreen2 extends StatefulWidget {
  @override
  TabBarScreen2State createState() => TabBarScreen2State();
}

class TabBarScreen2State extends State<TabBarScreen2>
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

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(
          icon: Icon(Icons.favorite),
        ),
        Tab(
          icon: Icon(Icons.adb),
        ),
        Tab(
          icon: Icon(Icons.airport_shuttle),
        ),
      ],
      // setup the controller
      controller: _tabController,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      // Add tabs as widgets
      children: tabs,
      // set the controller
      controller: _tabController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Appbar
        appBar: AppBar(
            title: Text("Using Tabs"),
            backgroundColor: Colors.blue,
            bottom: getTabBar()),
        body: getTabBarView(<Widget>[First(), Second(), Third()]));
  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          // center the children
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.favorite,
              size: 160.0,
              color: Colors.red,
            ),
            Text("First Tab")
          ],
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          // center the children
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.adb,
              size: 160.0,
              color: Colors.green,
            ),
            Text("Second Tab")
          ],
        ),
      ),
    );
  }
}

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          // center the children
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.airport_shuttle,
              size: 160.0,
              color: Colors.blue,
            ),
            Text("Third Tab")
          ],
        ),
      ),
    );
  }
}
