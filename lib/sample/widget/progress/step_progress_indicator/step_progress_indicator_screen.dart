import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class StepProgressIndicatorScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StepProgressIndicatorScreenState();
  }
}

class _StepProgressIndicatorScreenState extends BaseStatefulState<StepProgressIndicatorScreen> {
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
        "StepProgressIndicatorScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript("https://pub.dev/packages/step_progress_indicator");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          StepProgressIndicator(
            totalSteps: 10,
          ),
          SizedBox(height: 16.0),
          StepProgressIndicator(
            totalSteps: 10,
            currentStep: 6,
            selectedColor: Colors.red,
            unselectedColor: Colors.yellow,
          ),
          SizedBox(height: 16.0),
          StepProgressIndicator(
            totalSteps: 20,
            currentStep: 6,
            size: 10,
            selectedColor: Colors.purple,
            unselectedColor: Colors.transparent,
          ),
          SizedBox(height: 16.0),
          StepProgressIndicator(
            totalSteps: 15,
            currentStep: 12,
            size: 20,
            selectedColor: Colors.amber,
            unselectedColor: Colors.black,
            roundedEdges: Radius.circular(10),
            gradientColor: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.orange, Colors.white],
            ),
          ),
          SizedBox(height: 16.0),
          StepProgressIndicator(
            totalSteps: 100,
            currentStep: 32,
            size: 8,
            padding: 0,
            selectedColor: Colors.yellow,
            unselectedColor: Colors.cyan,
            roundedEdges: Radius.circular(10),
            selectedGradientColor: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.yellowAccent, Colors.deepOrange],
            ),
            unselectedGradientColor: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.black, Colors.blue],
            ),
          ),
          SizedBox(height: 16.0),
          StepProgressIndicator(
            totalSteps: 12,
            currentStep: 4,
            padding: 6.0,
            size: 12,
            progressDirection: TextDirection.rtl,
            selectedColor: Colors.green,
            unselectedColor: Colors.black12,
            selectedGradientColor: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.yellowAccent, Colors.deepOrange],
            ),
            unselectedGradientColor: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.black, Colors.blue],
            ),
          ),
          SizedBox(height: 16.0),
          StepProgressIndicator(
            totalSteps: 5,
            padding: 20.0,
            size: 20,
            customColor: (index) => index == 0
                ? Colors.redAccent
                : index == 4
                    ? Colors.blueAccent
                    : Colors.deepOrange,
          ),
          SizedBox(height: 16.0),
          StepProgressIndicator(
            totalSteps: 6,
            currentStep: 4,
            size: 36,
            selectedColor: Colors.black,
            unselectedColor: Colors.grey.withOpacity(0.3),
            customStep: (index, color, _) => color == Colors.black
                ? Container(
                    color: color,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  )
                : Container(
                    color: color,
                    child: Icon(
                      Icons.remove,
                    ),
                  ),
          ),
          SizedBox(height: 16.0),
          StepProgressIndicator(
              totalSteps: 10,
              currentStep: 7,
              selectedColor: Colors.pink,
              unselectedColor: Colors.amber,
              customSize: (index, value) => (index + 1) * 10.0),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircularStepProgressIndicator(
                totalSteps: 10,
                currentStep: 6,
                width: 100,
                roundedCap: (_, isSelected) => isSelected,
              ),
              CircularStepProgressIndicator(
                totalSteps: 12,
                currentStep: 6,
                selectedColor: Colors.redAccent,
                unselectedColor: Colors.grey[200],
                selectedStepSize: 10.0,
                width: 100,
                gradientColor: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.cyan, Colors.orangeAccent],
                ),
              ),
              CircularStepProgressIndicator(
                totalSteps: 20,
                currentStep: 6,
                padding: 3.14 / 15,
                selectedColor: Colors.cyan,
                unselectedColor: Colors.yellowAccent,
                selectedStepSize: 3.0,
                unselectedStepSize: 9.0,
                width: 100,
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircularStepProgressIndicator(
                totalSteps: 20,
                currentStep: 12,
                stepSize: 20,
                selectedColor: Colors.red,
                unselectedColor: Colors.purple[400],
                padding: 3.14 / 80,
                width: 150,
                height: 150,
                startingAngle: -3.14 * 2 / 3,
                arcSize: 3.14 * 2 / 3 * 2,
                gradientColor: LinearGradient(
                  colors: [Colors.red, Colors.purple.withOpacity(0.4)],
                ),
              ),
              CircularStepProgressIndicator(
                totalSteps: 100,
                currentStep: 74,
                stepSize: 10,
                selectedColor: Colors.greenAccent,
                unselectedColor: Colors.grey[200],
                padding: 0,
                width: 150,
                height: 150,
                selectedStepSize: 15,
                roundedCap: (_, __) => true,
              ),
            ],
          ),
          SizedBox(height: 16.0),
          CircularStepProgressIndicator(
            totalSteps: 100,
            currentStep: 72,
            selectedColor: Colors.yellow,
            unselectedColor: Colors.lightBlue,
            padding: 0,
            width: 100,
            child: Icon(
              Icons.tag_faces,
              color: Colors.red,
              size: 84,
            ),
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
