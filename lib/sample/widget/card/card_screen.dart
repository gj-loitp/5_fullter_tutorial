import 'package:com.roy93group.flutter_tutorial/lib/util/uI_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "CardScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                CardWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.pink,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album, size: 70),
              title: Text('Flutter ', style: TextStyle(color: Colors.white)),
              subtitle: Text('Dev', style: TextStyle(color: Colors.white)),
            ),
            ButtonBar(
              children: <Widget>[
                ElevatedButton(
                  child:
                      const Text('Edit', style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
                // ignore: deprecated_member_use
                ElevatedButton(
                  child: const Text('Delete',
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
