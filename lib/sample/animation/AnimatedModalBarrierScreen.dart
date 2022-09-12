import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class AnimatedModalBarrierScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedModalBarrierScreen",
        () => Get.back(),
        null,
      ),
      body: Container(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: AnimatedModalBarrierWidget(),
      ),
    );
  }
}

class AnimatedModalBarrierWidget extends StatefulWidget {
  @override
  _AnimatedModalBarrierWidgetState createState() {
    return _AnimatedModalBarrierWidgetState();
  }
}

class _AnimatedModalBarrierWidgetState
    extends State<AnimatedModalBarrierWidget> {
  var _dismissible = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UIUtils.getButton("Open Modal View", () {
            Navigator.of(context).push(MyPageRoute(
              page: _ModalPage(),
              dismissible: _dismissible,
            ));
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('dismissible'),
              Switch(
                onChanged: (value) {
                  setState(() {
                    _dismissible = value;
                  });
                },
                value: _dismissible,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyPageRoute extends TransitionRoute {
  MyPageRoute({
    required this.page,
    required this.dismissible,
  });

  final Widget page;
  final bool dismissible;

  @override
  Iterable<OverlayEntry> createOverlayEntries() {
    return [
      OverlayEntry(builder: _buildModalBarrier),
      OverlayEntry(builder: (context) => Center(child: page))
    ];
  }

  @override
  bool get opaque => false;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  Widget _buildModalBarrier(BuildContext context) {
    return IgnorePointer(
      ignoring: animation!.status == AnimationStatus.reverse ||
          animation!.status == AnimationStatus.dismissed,
      child: AnimatedModalBarrier(
        color: animation!.drive(
          ColorTween(
            begin: Colors.transparent,
            end: Colors.black.withAlpha(80),
          ),
        ),
        dismissible: dismissible,
      ),
    );
  }
}

class _ModalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Modal View'),
            const SizedBox(height: 16),
            UIUtils.getButton("Close view", () {
              Get.back();
            }),
          ],
        ),
      ),
    );
  }
}
