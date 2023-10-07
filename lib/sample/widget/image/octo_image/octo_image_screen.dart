import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:octo_image/octo_image.dart';

import 'mock_image_provider.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class OctoImageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OctoImageScreenState();
  }
}

class _OctoImageScreenState extends BaseStatefulState<OctoImageScreen> {
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
        "octo_image",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/octo_image");
        },
      ),
      body: OctoImagePage(
        sets: <OctoSet>[
          // OctoSet.blurHash('LEHV6nWB2yk8pyo0adR*.7kCMdnj'),
          OctoSet.circleAvatar(
            backgroundColor: Colors.red,
            text: const Text(
              "M",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          OctoSet.circularIndicatorAndIcon(),
          OctoSet.circularIndicatorAndIcon(showProgress: true),
        ],
      ),
    );
  }
}

class OctoImagePage extends StatelessWidget {
  final List<OctoSet> sets;

  const OctoImagePage({Key? key, required this.sets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: sets.map((element) => _row(element)).toList()),
    );
  }

  Widget _row(OctoSet octoSet) {
    return Row(
      children: <Widget>[
        Expanded(
          child: AspectRatio(
            aspectRatio: 269 / 173,
            child: OctoImage.fromSet(
              image: MockImageProvider(useCase: TestUseCase.loadAndFail),
              octoSet: octoSet,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: AspectRatio(
            aspectRatio: 269 / 173,
            child: OctoImage.fromSet(
              image: MockImageProvider(useCase: TestUseCase.loadAndSuccess),
              octoSet: octoSet,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
