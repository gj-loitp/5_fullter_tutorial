import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class Controller extends GetxController {
  var count = 0.obs;
  var text = "".obs;

  void clearAllValue() {
    Get.delete<Controller>();
  }

  void increment() {
    count++;
  }

  void minus() {
    count--;
  }

  void updateText(String s) {
    text.value = s;
  }

  void setCount(int count) {
    this.count.value = count;
  }
}
