import 'package:com.roy93group.flutter_tutorial/lib/util/log_dog_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FlutterReactionButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "FlutterReactionButtonScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: FlutterReactionButton(
          onReactionChanged: (reaction, index) {
            Dog.d("reaction selected index: $index");
          },
          reactions: getList(),
          initialReaction: Reaction(icon: Icon(Icons.language)),
          boxColor: Colors.black.withOpacity(0.5),
          boxRadius: 10,
          boxDuration: Duration(milliseconds: 500),
          boxAlignment: AlignmentDirectional.bottomEnd,
        ),
      ),
    );
  }

  List<Reaction> getList() {
    return [
      Reaction(
        previewIcon:
            _buildFlagsdPreviewIcon('assets/images/star.png', 'English'),
        icon: _buildIcon('assets/images/ic_circle_red.png'),
      ),
      Reaction(
        previewIcon:
            _buildFlagsdPreviewIcon('assets/images/ic_cancel.png', 'Arabic'),
        icon: _buildIcon('assets/images/ic_circle_violet.png'),
      ),
      Reaction(
        enabled: false,
        previewIcon: _buildFlagsdPreviewIcon(
            'assets/images/ic_check_mark_green.png', 'German'),
        icon: _buildIcon('assets/images/ic_circle_green.png'),
      ),
      Reaction(
        previewIcon:
            _buildFlagsdPreviewIcon('assets/images/star.png', 'Spanish'),
        icon: _buildIcon('assets/images/ic_circle_red.png'),
      ),
      Reaction(
        previewIcon: _buildFlagsdPreviewIcon('assets/images/iv.png', 'Chinese'),
        icon: _buildIcon('assets/images/ic_circle_violet.png'),
      ),
    ];
  }

  Widget _buildFlagsdPreviewIcon(String path, String text) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 7.5),
            Image.asset(path, height: 30),
          ],
        ),
      );

  Widget _buildIcon(String path) => Image.asset(
        path,
        height: 30,
        width: 30,
      );
}
