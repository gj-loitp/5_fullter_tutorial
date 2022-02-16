import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class FlowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "FlowScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: FlowWidget(),
    );
  }
}

class FlowWidget extends StatefulWidget {
  @override
  _FlowWidgetState createState() => _FlowWidgetState();
}

class _FlowWidgetState extends State<FlowWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _menuAnimation;
  IconData _iconDataLastTapped = Icons.notifications;

  final List<IconData> listIconData = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu,
  ];

  void _updateMenu(IconData icon) {
    if (icon != Icons.menu) setState(() => _iconDataLastTapped = icon);
  }

  @override
  void initState() {
    super.initState();
    _menuAnimation = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  Widget flowMenuItem(IconData iconData) {
    final double buttonDiameter =
        MediaQuery.of(context).size.width / listIconData.length;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: RawMaterialButton(
        fillColor:
            _iconDataLastTapped == iconData ? Colors.amber[700] : Colors.blue,
        splashColor: Colors.amber[100],
        shape: CircleBorder(),
        constraints: BoxConstraints.tight(Size(buttonDiameter, buttonDiameter)),
        onPressed: () {
          print("flowMenuItem onPressed");
          _updateMenu(iconData);
          _menuAnimation!.status == AnimationStatus.completed
              ? _menuAnimation!.reverse()
              : _menuAnimation!.forward();
        },
        child: Icon(
          iconData,
          color: Colors.white,
          size: 45.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: FlowMenuDelegate(menuAnimation: _menuAnimation),
      children: listIconData
          .map<Widget>((IconData icon) => flowMenuItem(icon))
          .toList(),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({this.menuAnimation}) : super(repaint: menuAnimation);

  final Animation<double>? menuAnimation;

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (int i = 0; i < context.childCount; ++i) {
      dx = context.getChildSize(i)!.width * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          dx * menuAnimation!.value,
          0,
          0,
        ),
      );
    }
  }
}
