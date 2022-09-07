import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_controller.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ControllerNoteAdd extends BaseController {
  var title = "".obs;
  var content = "".obs;
  var isValidInput = false.obs;

  void clearAllValue() {
    Get.delete<ControllerNoteAdd>();
  }

  void setTitle(String title) {
    this.title.value = title;
    _checkValidInput();
  }

  void setContent(String content) {
    this.content.value = content;
    _checkValidInput();
  }

  void _checkValidInput() {
    String title = this.title.value;
    String content = this.content.value;
    if (title.isEmpty || content.isEmpty) {
      this.isValidInput.value = false;
    } else {
      this.isValidInput.value = true;
    }
  }
}
