import 'package:get/get.dart';

import '../../lib/core/base_controller.dart';
import '../../lib/util/shared_preferences_util.dart';

class MenuController extends BaseController {
  var isFullData = false.obs;

  void clearOnDispose() {
    Get.delete<MenuController>();
  }

  void setupData() async {
    isFullData.value = await SharedPreferencesUtil.isFullData();
  }
}
