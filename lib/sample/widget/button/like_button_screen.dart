import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:like_button/like_button.dart';

class LikeButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "LikeButtonScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/like_button");
        },
      ),
      body: CupertinoScrollbar(
        isAlwaysShown: false,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: DimenConstants.marginPaddingMedium),
            LikeButton(
              size: 50,
              circleColor:
                  CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
              bubblesColor: BubblesColor(
                dotPrimaryColor: Color(0xff33b5e5),
                dotSecondaryColor: Color(0xff0099cc),
              ),
              likeBuilder: (bool isLiked) {
                return Icon(
                  Icons.home,
                  color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
                  size: 50,
                );
              },
              likeCount: 5,
              countBuilder: (
                int? likeCount,
                bool isLiked,
                String text,
              ) {
                var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                Widget result;
                if (likeCount == 0) {
                  result = Text(
                    "love",
                    style: TextStyle(color: color),
                  );
                } else
                  result = Text(
                    text,
                    style: TextStyle(color: color),
                  );
                return result;
              },
            ),
          ],
        ),
      ),
    );
  }
}
