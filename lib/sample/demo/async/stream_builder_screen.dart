import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class StreamBuilderScreen extends StatefulWidget {
  @override
  _StreamBuilderScreenState createState() => _StreamBuilderScreenState();
}

class _StreamBuilderScreenState extends State<StreamBuilderScreen> {
  ///Preparing a stream of data where a double will be emitted every 100 milliseconds
  ///till the value reaches 101.
  var counterStream = Stream<double>.periodic(
      Duration(milliseconds: 100), (x) => (x * 2).toDouble()).take(101);
  bool _isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "StreamBuilderScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              StreamBuilder(
                stream: _isButtonClicked ? counterStream : null,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Container();
                  }
                  double h = snapshot.data as double;
                  double w = snapshot.data as double;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(24),
                        height: h,
                        width: w,
                        color: Colors.amber[500],
                      ),
                      Container(
                        margin:
                            EdgeInsets.all(DimenConstants.marginPaddingMedium),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            UIUtils.getText("Height: ${snapshot.data}"),
                            UIUtils.getText("Width: ${snapshot.data}"),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              UIUtils.getButton(
                "Start Stream",
                _isButtonClicked == false
                    ? () {
                        ///You need to reset UI by calling setState.
                        setState(() {
                          _isButtonClicked == false
                              ? _isButtonClicked = true
                              : _isButtonClicked = false;
                        });
                      }
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
