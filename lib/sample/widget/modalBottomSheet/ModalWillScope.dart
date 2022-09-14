import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ModalWillScope extends StatelessWidget {
  const ModalWillScope({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: WillPopScope(
      onWillPop: () async {
        bool shouldClose = true;
        await showCupertinoDialog(
            context: context,
            builder: (context) => CupertinoAlertDialog(
                  title: Text('Should Close?'),
                  actions: <Widget>[
                    CupertinoButton(
                      child: Text('Yes'),
                      onPressed: () {
                        shouldClose = true;
                        Navigator.of(context).pop();
                      },
                    ),
                    CupertinoButton(
                      child: Text('No'),
                      onPressed: () {
                        shouldClose = false;
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ));
        return shouldClose;
      },
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            leading: Container(), middle: Text('Modal Page')),
        child: Center(),
      ),
    ));
  }
}
