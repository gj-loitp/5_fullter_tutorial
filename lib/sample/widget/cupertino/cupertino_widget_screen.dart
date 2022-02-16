import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class CupertinoWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "CupertinoWidgetScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              CupertinoActivityIndicatorWidget(),
              SizedBox(
                height: 50,
              ),
              CupertinoAlertDialogWidget(),
              SizedBox(
                height: 50,
              ),
              CupertinoButtonWidget(),
              SizedBox(
                height: 50,
              ),
              CupertinoContextMenuWidget(),
              SizedBox(
                height: 50,
              ),
              CupertinoDialogActionWidget(),
              SizedBox(
                height: 50,
              ),
              CupertinoSliderWidget(),
              SizedBox(
                height: 50,
              ),
              CupertinoSwitchWidget(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CupertinoActivityIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CupertinoActivityIndicator(),
        SizedBox(height: 20),
        CupertinoActivityIndicator(radius: 30.0),
        SizedBox(height: 20),
        CupertinoActivityIndicator(
          animating: false,
          radius: 30.0,
        )
      ],
    );
  }
}

class CupertinoAlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CupertinoButton(
          color: Colors.blue,
          pressedOpacity: 0.6,
          child: Text('Show AlertDialog'),
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: Text('Title'),
                  content: Text('Content'),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: Text('OK'),
                      isDestructiveAction: true,
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    CupertinoDialogAction(
                      child: Text('Cancel'),
                      isDefaultAction: true,
                      onPressed: () {
                        Get.back();
                      },
                    )
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class CupertinoButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CupertinoButton(
          child: Text('CupertinoButton'),
          onPressed: () {},
        ),
        SizedBox(height: 5),
        CupertinoButton.filled(
          child: Text('CupertinoButton'),
          onPressed: () {},
        ),
      ],
    );
  }
}

class CupertinoContextMenuWidget extends StatefulWidget {
  @override
  _CupertinoContextMenuWidgetState createState() =>
      _CupertinoContextMenuWidgetState();
}

class _CupertinoContextMenuWidgetState
    extends State<CupertinoContextMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          child: CupertinoContextMenu(
            child: Container(
              child: Image.asset('assets/images/gallery1.jpg'),
            ),
            actions: <Widget>[
              CupertinoContextMenuAction(
                child: const Text('Action one'),
                onPressed: () {
                  Get.back();
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('Action two'),
                onPressed: () {
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CupertinoDialogActionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CupertinoButton(
          color: Colors.blue,
          child: Text('Show CupertinoDialogActionWidget'),
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: Text('Title'),
                  content: Text('Content'),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: Text('Item1'),
                      isDestructiveAction: true,
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    CupertinoDialogAction(
                      child: Text('Item2'),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    CupertinoDialogAction(
                      child: Text('Item3'),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class CupertinoSliderWidget extends StatefulWidget {
  @override
  _CupertinoSliderWidgetState createState() => _CupertinoSliderWidgetState();
}

class _CupertinoSliderWidgetState extends State<CupertinoSliderWidget> {
  double _value1 = 20;
  double _value2 = 15;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CupertinoSlider(
          value: _value1,
          min: 0,
          max: 100,
          onChanged: (double value) {
            setState(() => _value1 = value);
          },
        ),
        Text('Slider value ：${_value1.toStringAsFixed(1)}'),
        CupertinoSlider(
          value: _value2,
          divisions: 5,
          min: 0,
          max: 100,
          activeColor: Colors.green,
          onChanged: (double value) {
            setState(() {
              _value2 = value;
            });
          },
          onChangeStart: (v) {},
          onChangeEnd: (v) {},
        ),
        Text('Slider value ：${_value2.toString()}'),
      ],
    );
  }
}

class CupertinoSwitchWidget extends StatefulWidget {
  @override
  _CupertinoSwitchWidgetState createState() => _CupertinoSwitchWidgetState();
}

class _CupertinoSwitchWidgetState extends State<CupertinoSwitchWidget> {
  bool flag1 = false;
  bool flag2 = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CupertinoSwitch(
          value: flag1,
          onChanged: (value) {
            setState(() => flag1 = value);
          },
        ),
        CupertinoSwitch(
          value: flag2,
          activeColor: Colors.blue,
          onChanged: (value) {
            setState(() => flag2 = value);
          },
        )
      ],
    );
  }
}
