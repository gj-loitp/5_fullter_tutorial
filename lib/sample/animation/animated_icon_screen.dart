import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class AnimatedIconScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedIconScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: AnimatedIconWidget(),
      ),
    );
  }
}

class AnimatedIconWidget extends StatefulWidget {
  @override
  _AnimatedIconWidgetState createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool flag = false;
  bool isSlow = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var icons = [
      AnimatedIcons.add_event,
      AnimatedIcons.arrow_menu,
      AnimatedIcons.close_menu,
      AnimatedIcons.ellipsis_search,
      AnimatedIcons.event_add,
      AnimatedIcons.home_menu,
      AnimatedIcons.list_view,
      AnimatedIcons.menu_arrow,
      AnimatedIcons.menu_close,
      AnimatedIcons.menu_home,
      AnimatedIcons.pause_play,
      AnimatedIcons.play_pause,
      AnimatedIcons.search_ellipsis,
      AnimatedIcons.view_list
    ];
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => Center(
              child: AnimatedIcon(
                icon: icons[index],
                progress: controller,
              ),
            ),
            itemCount: icons.length,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            UIUtils.getButton("Start", () {
              flag = !flag;
              flag ? controller.forward() : controller.reverse();
            }),
            Text('Slow'),
            Switch(
              value: isSlow,
              onChanged: (value) {
                setState(() {
                  isSlow = value;
                  controller.duration =
                      isSlow ? Duration(seconds: 6) : Duration(seconds: 1);
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
