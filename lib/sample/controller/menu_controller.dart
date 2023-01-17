import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../lib/core/base_controller.dart';
import '../../lib/util/shared_preferences_util.dart';

class MenuController extends BaseController {
  var isFullData = false.obs;

  PackageInfo packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  void clearOnDispose() {
    Get.delete<MenuController>();
  }

  void setupData() async {
    isFullData.value = await SharedPreferencesUtil.isFullData();
  }

  Future<void> initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    packageInfo = info;
  }
}
