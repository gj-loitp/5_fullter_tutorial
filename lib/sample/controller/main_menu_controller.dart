import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../lib/core/base_controller.dart';

class MainMenuController extends BaseController {
  // var isFullData = false.obs;

  PackageInfo packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  var versionName = "".obs;

  void clearOnDispose() {
    Get.delete<MainMenuController>();
  }

  // void setupData() async {
  //   isFullData.value = await SharedPreferencesUtil.isFullData();
  // }

  Future<void> initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    packageInfo = info;

    versionName.value = packageInfo.version;
    versionName.refresh();
  }
}
