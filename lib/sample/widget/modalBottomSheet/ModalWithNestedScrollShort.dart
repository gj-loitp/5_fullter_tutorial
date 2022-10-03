import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class CustomModal extends StatelessWidget {
  const CustomModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = <String>[];
    for (int i = 0; i < 5; i++) {
      list.add("Loitp $i");
    }

    double heightRow = 50;
    double heightTotal = heightRow * list.length;
    double heightScreen = Get.height;
    double heightFinal = 0;
    if (heightTotal >= heightScreen) {
      heightFinal = heightScreen;
    } else {
      heightFinal = heightTotal;
    }

    return Container(
      height: heightFinal,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        controller: ModalScrollController.of(context),
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            height: heightRow,
            color: index.isOdd ? Colors.green : Colors.orange,
            child: UIUtils.getText(list[index]),
          );
        },
        itemCount: list.length,
      ),
    );
  }
}
