import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class DropShadowScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DropShadowScreenState();
  }
}

class _DropShadowScreenState extends BaseStatefulState<DropShadowScreen> {
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
        "drop_shadow",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://github.com/tplloi/drop_shadow");
        },
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropShadow(
                child: Image.network(
                  'https://images.pexels.com/photos/1191639/pexels-photo-1191639.jpeg',
                  width: 250,
                ),
              ),
              const SizedBox(height: 35),
              DropShadow(
                child: Container(
                  height: 150,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF3366FF), Color(0xFF00CCFF)],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const DropShadow(
                child: Text(
                  'Ehuehuehueuhe',
                  style: TextStyle(fontSize: 35, color: Colors.orange),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
