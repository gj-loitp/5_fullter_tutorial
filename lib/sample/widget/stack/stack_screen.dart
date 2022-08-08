import 'package:flutter/material.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class StackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            // Max Size
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.pink,
              height: 400.0,
              width: 300.0,
            ),
            Container(
              color: Colors.yellow,
              height: 220.0,
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
