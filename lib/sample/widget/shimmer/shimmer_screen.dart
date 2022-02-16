import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ShimmerScreen",
      routes: {
        'loading': (_) => LoadingListPage(),
        'slide': (_) => SlideToUnlockPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShimmerHomePage(),
    );
  }
}

class ShimmerHomePage extends StatefulWidget {
  @override
  _ShimmerHomePageState createState() => _ShimmerHomePageState();
}

class _ShimmerHomePageState extends State<ShimmerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ShimmerScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("Loading List"),
            onTap: () => Navigator.of(context).pushNamed('loading'),
          ),
          ListTile(
            title: const Text("Slide To Unlock"),
            onTap: () => Navigator.of(context).pushNamed('slide'),
          )
        ],
      ),
    );
  }
}

class LoadingListPage extends StatefulWidget {
  @override
  _LoadingListPageState createState() => _LoadingListPageState();
}

class _LoadingListPageState extends State<LoadingListPage> {
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "LoadingListPage",
        () {
          Get.back();
        },
        null,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: DimenConstants.marginPaddingMedium,
          vertical: DimenConstants.marginPaddingMedium,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Shimmer.fromColors(
                baseColor: Colors.grey.withOpacity(0.5),
                highlightColor: Colors.grey.withOpacity(0.1),
                enabled: _enabled,
                child: ListView.builder(
                  itemBuilder: (_, __) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 69.0,
                          height: 48.0,
                          color: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: 40.0,
                                height: 8.0,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  itemCount: 10,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: UIUtils.getButton(
                  _enabled ? 'Stop' : 'Play',
                  () => {
                        setState(() {
                          _enabled = !_enabled;
                        }),
                      }),
            )
          ],
        ),
      ),
    );
  }
}

class SlideToUnlockPage extends StatelessWidget {
  final List<String> days = <String>[
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  final List<String> months = <String>[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  @override
  Widget build(BuildContext context) {
    final DateTime time = DateTime.now();
    final int hour = time.hour;
    final int minute = time.minute;
    final int day = time.weekday;
    final int month = time.month;
    final int dayInMonth = time.day;
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Slide To Unlock",
        () => Get.back(),
        () => null,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bkg_city.JPG",
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 48.0,
            right: 0.0,
            left: 0.0,
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "${hour < 10 ? "0$hour" : "$hour"}:${minute < 10 ? "0$minute" : "$minute"}",
                    style: TextStyle(
                      fontSize: 60.0,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                  ),
                  Text(
                    "${days[day - 1]}, ${months[month - 1]} $dayInMonth",
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 24.0,
            left: 0.0,
            right: 0.0,
            child: Center(
              child: Opacity(
                opacity: 0.8,
                child: Shimmer.fromColors(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/ic_right_arrow.png",
                        height: 50.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                      ),
                      const Text(
                        "Slide to unlock",
                        style: TextStyle(
                          fontSize: 28.0,
                        ),
                      )
                    ],
                  ),
                  baseColor: Colors.black12,
                  highlightColor: Colors.white,
                  loop: 69,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
