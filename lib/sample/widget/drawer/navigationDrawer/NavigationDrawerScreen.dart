import 'package:flutter/material.dart';

import 'AccountScreen.dart';
import 'HomeScreen.dart';
import 'SettingsScreen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
