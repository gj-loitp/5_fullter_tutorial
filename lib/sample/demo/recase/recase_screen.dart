import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recase/recase.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class RecaseScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RecaseScreenState();
  }
}

class _RecaseScreenState extends BaseStatefulState<RecaseScreen> {
  @override
  void initState() {
    super.initState();
    _test();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "recase",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/recase");
        },
      ),
      body: Center(
        child: UIUtils.getText("Check log cat"),
      ),
    );
  }

  void _test() {
    ReCase rc = new ReCase('Just_someSample-text');

    print(rc.camelCase); // Prints 'justSomeSampleText'
    print(rc.constantCase); // Prints 'JUST_SOME_SAMPLE_TEXT'
    print(rc.sentenceCase);
    print(rc.snakeCase);
    print(rc.dotCase);
    print(rc.paramCase);
    print(rc.pathCase);
    print(rc.pascalCase);
    print(rc.headerCase);
    print(rc.titleCase);
  }
}
