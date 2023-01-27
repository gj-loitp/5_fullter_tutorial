import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class PopupMenuButtonScreen extends StatefulWidget {
  @override
  _PopupMenuButtonScreenState createState() => _PopupMenuButtonScreenState();
}

enum Selections { java, c, swift, dart }

class _PopupMenuButtonScreenState extends State<PopupMenuButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "PopupMenuButtonScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: PopupMenuButton<Selections>(
          icon: Icon(Icons.input),
          onSelected: (Selections result) {
            print("onSelected " + result.toString());
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<Selections>>[
            const PopupMenuItem<Selections>(
              value: Selections.java,
              child: Text(
                'Choose java',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const PopupMenuItem<Selections>(
              value: Selections.c,
              child: Text('Choose c'),
            ),
            const PopupMenuItem<Selections>(
              value: Selections.swift,
              child: Text('Choose swift'),
            ),
            const PopupMenuItem<Selections>(
              value: Selections.dart,
              child: Text('Choose dart'),
            ),
            const PopupMenuDivider(),
            const PopupMenuDivider(),
            const PopupMenuDivider(),
            PopupMenuItem<Selections>(
              value: Selections.dart,
              child: Image.asset(
                "assets/images/ic_l.png",
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
