import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'grid.dart';
import 'list.dart';
import 'states.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class SkeletonLoaderScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SkeletonLoaderScreenState();
  }
}

class _SkeletonLoaderScreenState
    extends BaseStatefulState<SkeletonLoaderScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "skeleton_loader",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/skeleton_loader");
        },
      ),
      body: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  final String appTitle = "Flutter Skeleton Loader Demo";
  final List<StateCapital> sc = [
    StateCapital(name: "Abia", capital: "Umuahia"),
    StateCapital(name: "Adamawa", capital: "Yola"),
    StateCapital(name: "Akwa-Ibom", capital: "Uyo"),
    StateCapital(name: "Anambra", capital: "Awka"),
    StateCapital(name: "Bauchi", capital: "Bauchi"),
    StateCapital(name: "Bayelsa", capital: "Yenagoa"),
    StateCapital(name: "Benue", capital: "Makurdi"),
    StateCapital(name: "Borno", capital: "Maiduguri"),
    StateCapital(name: "Cross River", capital: "Calabar"),
    StateCapital(name: "Delta", capital: "Asaba"),
    StateCapital(name: "Ebonyi", capital: "Abakaliki"),
    StateCapital(name: "Edo", capital: "Benin"),
    StateCapital(name: "Ekiti", capital: "Ado-Ekiti"),
    StateCapital(name: "Enugu", capital: "Enugu"),
    // StateCapital(name: "FCT", capital: "Abuja"),
    StateCapital(name: "Gombe", capital: "Gombe"),
    StateCapital(name: "Imo", capital: "Owerri"),
    StateCapital(name: "Jigawa", capital: "Dutse"),
    StateCapital(name: "Kaduna", capital: "Kaduna"),
    StateCapital(name: "Kano", capital: "Kano"),
    StateCapital(name: "Katsina", capital: "Katsina"),
    StateCapital(name: "Kebbi", capital: "Birnin-Kebbi"),
    StateCapital(name: "Kogi", capital: "Lokoja"),
    StateCapital(name: "Kwara", capital: "Ilorin"),
    StateCapital(name: "Lagos", capital: "Ikeja"),
    StateCapital(name: "Nassarawa", capital: "Lafia"),
    StateCapital(name: "Niger", capital: "Mina"),
    StateCapital(name: "Ogun", capital: "Abeokuta"),
    StateCapital(name: "Ondo", capital: "Akure"),
    StateCapital(name: "Osun", capital: "Osogbo"),
    StateCapital(name: "Oyo", capital: "Ibadan"),
    StateCapital(name: "Plateau", capital: "Jos"),
    StateCapital(name: "Rivers", capital: "Port Harcourt"),
    StateCapital(name: "Sokoto", capital: "Sokoto"),
    StateCapital(name: "Taraba", capital: "Jalingo"),
    StateCapital(name: "Yobe", capital: "Damaturu"),
    StateCapital(name: "Zamfara", capital: "Gusau"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.openSansTextTheme(),
        primaryTextTheme: GoogleFonts.openSansTextTheme().copyWith(
          titleLarge: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      debugShowCheckedModeBanner: true,
      home: DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Skeleton Loader Demo"),
            bottom: TabBar(
              labelColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  text: "List",
                ),
                Tab(
                  text: "Grid",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListExample(stateCapitals: sc),
              GridExample(stateCapitals: sc),
            ],
          ),
        ),
      ),
    );
  }
}
