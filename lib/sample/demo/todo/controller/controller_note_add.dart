import 'package:get/get.dart';
import 'package:hello_word/lib/core/base_controller.dart';

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
    if (title == null || title.isEmpty || content == null || content.isEmpty) {
      this.isValidInput.value = false;
    } else {
      this.isValidInput.value = true;
    }
  }
}
