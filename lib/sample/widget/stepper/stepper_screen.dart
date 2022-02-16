import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class StepperScreen extends StatefulWidget {
  @override
  StepperScreenState createState() => StepperScreenState();
}

class StepperScreenState extends State<StepperScreen> {
  // init the step to 0th position
  int _currentStep = 0;
  List<Step> _listMySteps = [
    Step(
        // Title of the Step
        title: Text("Step 1"),
        // Content, it can be any widget here. Using basic Text for this example
        content: Text("Hello!"),
        isActive: true),
    Step(
        title: Text("Step 2"),
        content: Text("World!"),
        // You can change the style of the step icon i.e number, editing, etc.
        state: StepState.editing,
        isActive: true),
    Step(
      title: Text("Step 3"),
      content: Text("Hello World!"),
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "StepperScreen",
        () {
          Get.back();
        },
        null,
      ),
      // Body
      body: Container(
          child: Stepper(
        // Using a variable here for handling the currentStep
        currentStep: this._currentStep,
        // List the steps you would like to have
        steps: _listMySteps,
        // Define the type of Stepper style
        // StepperType.horizontal :  Horizontal Style
        // StepperType.vertical   :  Vertical Style
        type: StepperType.vertical,
        // Know the step that is tapped
        onStepTapped: (step) {
          // On hitting step itself, change the state and jump to that step
          setState(() {
            // update the variable handling the current step value
            // jump to the tapped step
            _currentStep = step;
          });
          // Log function call
          print("onStepTapped : " + step.toString());
        },
        onStepCancel: () {
          // On hitting cancel button, change the state
          setState(() {
            // update the variable handling the current step value
            // going back one step i.e subtracting 1, until its 0
            if (_currentStep > 0) {
              _currentStep = _currentStep - 1;
            } else {
              _currentStep = 0;
            }
          });
          // Log function call
          print("onStepCancel : " + _currentStep.toString());
        },
        // On hitting continue button, change the state
        onStepContinue: () {
          setState(() {
            // update the variable handling the current step value
            // going back one step i.e adding 1, until its the length of the step
            if (_currentStep < _listMySteps.length - 1) {
              _currentStep = _currentStep + 1;
            } else {
              _currentStep = 0;
            }
          });
          // Log function call
          print("onStepContinue : " + _currentStep.toString());
        },
      )),
    );
  }
}
