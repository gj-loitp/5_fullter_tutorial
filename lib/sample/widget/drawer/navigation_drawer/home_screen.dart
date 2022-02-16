import 'package:flutter/material.dart';
import 'account_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Drawer getNavDrawer(BuildContext context) {
    var headerChild = DrawerHeader(
      margin: EdgeInsets.all(0.0),
      padding: EdgeInsets.all(0.0),
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Center(
          child: Text(
            "HomeScreenState Header",
            style: TextStyle(
              backgroundColor: Colors.red,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );

    var aboutChild = AboutListTile(
      child: Text("HomeScreenState About"),
      applicationName: "HomeScreenState Application Name",
      applicationVersion: "v1.0.0",
      applicationIcon: Icon(Icons.adb),
      icon: Icon(Icons.info),
    );

    ListTile getNavItem(var icon, String s, String routeName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(s),
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var myNavChildren = [
      headerChild,
      getNavItem(
        Icons.settings,
        "Settings",
        SettingsScreen.routeName,
      ),
      getNavItem(
        Icons.home,
        "Home",
        "/",
      ),
      getNavItem(
        Icons.account_box,
        "Account",
        AccountScreen.routeName,
      ),
      aboutChild,
    ];

    ListView listView = ListView(children: myNavChildren);

    return Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NavigationDrawerScreen"),
      ),
      body: Container(
        child: Center(
          child: Text("Home Screen"),
        ),
      ),
      drawer: getNavDrawer(context),
    );
  }
}
