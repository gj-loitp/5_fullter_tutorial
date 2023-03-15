import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:live_background/fx/base_fx.dart';
import 'package:live_background/live_background.dart';
import 'package:live_background/object/particle_shape_type.dart';
import 'package:live_background/widget/live_background_widget.dart';
import 'package:nav/nav.dart';
import 'package:velocity_x/velocity_x.dart';

import 'dialog/edit_color_dialog.dart';
import 'showcase/enum_show_case.dart';
import 'widget/height.dart';
import 'widget/square_button.dart';

// void main() {
//   runApp(MyApp());
// }

class LiveBackgroundEx extends StatelessWidget {
  const LiveBackgroundEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

class MyApp extends StatefulWidget {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live Background Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showBackButton = false;
  final liveBackgroundController = LiveBackgroundController();
  Palette _palette = Palette(colors: [Colors.white, Colors.yellow]);
  double particleCount = 300;
  double vx = BaseFx.baseVelocity;
  double vy = BaseFx.baseVelocity;
  double particleMinSize = 10;
  double particleMaxSize = 50;
  bool hideSetting = false;
  ShowCase? showCase;
  ParticleShapeType shapeType = ParticleShapeType.circle;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          onPressed: () async {
            if (hideSetting) {
              setState(() {
                hideSetting = false;
                showCase = null;
              });
            } else {
              await showEditColorDialog(context);
            }
          },
          child: Icon(hideSetting ? Icons.settings : Icons.palette),
        ),
      ),
      body: Builder(
          builder: (context) => Stack(
                children: [
                  Container(
                    color: Colors.black,
                  ),
                  LiveBackgroundWidget(
                    controller: liveBackgroundController,
                    palette: _palette,
                    shape: shapeType,
                  ),
                  SafeArea(
                    child: SingleChildScrollView(
                      child: hideSetting
                          ? showCase?.getWidget(context) ?? Container()
                          : settingWidget(),
                    ),
                  ),
                ],
              )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Container settingWidget() {
    return Container(
      color: Colors.black.withOpacity(0.0),
      child: Column(children: [
        Height(100),
        ("Particle Count: " + particleCount.toInt().toString())
            .text
            .size(25)
            .white
            .make(),
        Slider(
            value: particleCount,
            max: 1500,
            min: 0,
            onChanged: ((value) {
              setState(() {
                particleCount = value;
                liveBackgroundController.setCount(value.toInt());
              });
            })),
        Height(30),
        ("Particle velocity X: " + vx.toStringAsFixed(2))
            .text
            .size(25)
            .white
            .make(),
        Slider(
            value: vx,
            max: 100,
            min: -100,
            onChanged: ((value) {
              setState(() {
                vx = value;
                liveBackgroundController.setVelocity(vx, vy);
              });
            })),
        Height(30),
        ("Particle velocity Y: " + vy.toStringAsFixed(2))
            .text
            .size(25)
            .white
            .make(),
        Slider(
            value: vy,
            max: 100,
            min: -100,
            onChanged: ((value) {
              setState(() {
                vy = value;
                liveBackgroundController.setVelocity(vx, vy);
              });
            })),
        Height(30),
        ("Particle min size: " + particleMinSize.toStringAsFixed(2))
            .text
            .size(25)
            .white
            .make(),
        Slider(
            value: particleMinSize,
            max: particleMaxSize,
            min: 1,
            onChanged: ((value) {
              setState(() {
                particleMinSize = value;
                liveBackgroundController.setSize(
                    particleMinSize, particleMaxSize);
              });
            })),
        Height(30),
        ("Particle max size: " + particleMaxSize.toStringAsFixed(2))
            .text
            .size(25)
            .white
            .make(),
        Slider(
            value: particleMaxSize,
            max: 150,
            min: particleMinSize,
            onChanged: ((value) {
              setState(() {
                particleMaxSize = value;
                liveBackgroundController.setSize(
                    particleMinSize, particleMaxSize);
              });
            })),
        Height(30),
        SquareButton(
            text: "Hide Setting",
            onPressed: () {
              setState(() {
                hideSetting = true;
              });
            }),
        SquareButton(
            text: "Toggle Shape - now: ${describeEnum(shapeType)}",
            onPressed: () {
              switch (shapeType) {
                case ParticleShapeType.circle:
                  shapeType = ParticleShapeType.square;
                  break;
                case ParticleShapeType.square:
                  shapeType = ParticleShapeType.random;
                  break;
                case ParticleShapeType.random:
                  shapeType = ParticleShapeType.circle;
                  break;
              }
              setState(() {});
              liveBackgroundController.setShape(shapeType);
            }),
        ...ShowCase.values.map(
          (e) {
            return SquareButton(
                text: "Show case: ${e.showCaseName}",
                onPressed: () {
                  setState(() {
                    hideSetting = true;
                    showCase = e;
                  });
                  liveBackgroundController.setPalette(e.palette);

                  switch (e) {
                    case ShowCase.Matrix:
                      liveBackgroundController.setCount(3000);
                      liveBackgroundController.setSize(5, 30);
                      liveBackgroundController.setVelocity(0, -7);
                      liveBackgroundController
                          .setShape(ParticleShapeType.square);
                      break;
                    case ShowCase.Christmas:
                      liveBackgroundController.setCount(500);
                      liveBackgroundController.setSize(5, 30);
                      liveBackgroundController.setVelocity(0, -1);
                      liveBackgroundController
                          .setShape(ParticleShapeType.circle);
                      break;
                    case ShowCase.HappyNewYear:
                      liveBackgroundController.setCount(300);
                      liveBackgroundController.setSize(1, 50);
                      liveBackgroundController.setVelocity(-1, 1);
                      liveBackgroundController
                          .setShape(ParticleShapeType.circle);
                      break;
                  }
                });
          },
        ).toList(),
        Height(300)
      ]),
    );
  }

  Future<void> showEditColorDialog(BuildContext context) async {
    final result = await EditColorListDialog(context, _palette.colors).show();
    if (Nav.isSuccess(result)) {
      _palette = Palette(colors: result[EditColorListDialog.data]);
      liveBackgroundController.setPalette(_palette);
    }
  }
}
