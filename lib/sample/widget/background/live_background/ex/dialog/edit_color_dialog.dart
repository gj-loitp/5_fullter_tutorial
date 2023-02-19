import 'package:com.roy93group.flutter_tutorial/sample/widget/background/live_background/ex/ext/ext_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/enum/enum_nav_ani.dart';
import 'package:nav/nav.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widget/height.dart';
import '../widget/square_button.dart';
import '../widget/width.dart';

class EditColorListDialog extends DialogWidget {
  static final data = "data";
  final List<Color>? colorList;

  EditColorListDialog(BuildContext buildContext, this.colorList)
      : super(buildContext);

  final NavAni ani = NavAni.Bottom;

  @override
  State<StatefulWidget> createState() {
    return _DialogState(onHide);
  }
}

class _DialogState extends DialogState<EditColorListDialog> {
  var isChecked = false;

  _DialogState(Function() onHide) : super(onHide);
  List<Color> editedColorList = [];
  Color pickerColor = Colors.white;

  @override
  void initState() {
    editedColorList = widget.colorList != null
        ? List.from(widget.colorList!)
        : editedColorList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final radius = Radius.circular(14);
    final viewPaddingBottom = MediaQuery.of(context).viewPadding.bottom;
    return Material(
      color: Colors.black.withOpacity(0.5),
      child: InkWell(
        onTap: () {
          widget.hide();
        },
        child: Stack(
          children: [
            ListView(
              reverse: true,
              padding:
                  EdgeInsets.only(bottom: 200 + viewPaddingBottom, top: 150),
              children: [
                Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            CloseButton(onPressed: () {
                              widget.hide();
                            }),
                          ],
                        ),
                        Height(viewPaddingBottom)
                      ],
                    ),
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: radius, topRight: radius))),
                ...editedColorList.map((e) => Row(
                      children: [
                        Width(20),
                        Container(
                          decoration:
                              BoxDecoration(color: e, shape: BoxShape.circle),
                          height: 50,
                          width: 50,
                        ),
                        Width(20),
                        Expanded(
                            child: e.toHex().text.white.bold.size(20).make()),
                        CloseButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              editedColorList.remove(e);
                            });
                          },
                        )
                      ],
                    ).p24())
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Container(),
                ),
                SquareButton(
                  onPressed: () {
                    pickColor(context);
                  },
                  text: 'Add new',
                ),
                Height(5),
                SquareButton(
                  onPressed: () {
                    widget.hide({
                      Nav.RESULT: Nav.SUCCESS,
                      EditColorListDialog.data: editedColorList
                    });
                  },
                  text: 'Apply',
                ),
                Height(viewPaddingBottom)
              ],
            )
          ],
        ),
      ),
    );
  }

  void pickColor(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                title: const Text('Pick a color!'),
                content: SingleChildScrollView(
                  child: ColorPicker(
                    pickerColor: pickerColor,
                    onColorChanged: (color) {
                      pickerColor = color;
                    },
                  ),
                ),
                actions: <Widget>[
                  ElevatedButton(
                    child: const Text('Select'),
                    onPressed: () {
                      setState(() {
                        editedColorList.add(pickerColor);
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ]));
  }
}
