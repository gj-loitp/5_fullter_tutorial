import 'package:flutter/material.dart';

import 'account_screen.dart';
import 'home_screen.dart';
import 'settings_screen.dart';

class NavigationDrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), // route for home is '/' implicitly
      routes: <String, WidgetBuilder>{
        SettingsScreen.routeName: (BuildContext context) => SettingsScreen(),
        AccountScreen.routeName: (BuildContext context) => AccountScreen(),
      },
    );
  }
}
