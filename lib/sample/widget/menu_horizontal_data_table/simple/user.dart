import 'user_info.dart';

class User {
  List<UserInfo> listUserInfo = [];

  void initData(int size) {
    for (int i = 0; i < size; i++) {
      listUserInfo.add(
        UserInfo(
          "User_$i",
          i % 2 == 0,
          "Phone $i",
          DateTime.now().millisecondsSinceEpoch.toString(),
          "N/A",
        ),
      );
    }
  }

  ///
  /// Single sort, sort Name's id
  void sortName(bool isAscending) {
    listUserInfo.sort((a, b) {
      int aId = int.tryParse(a.name.replaceFirst('User_', ''))!;
      int bId = int.tryParse(b.name.replaceFirst('User_', ''))!;
      return (aId - bId) * (isAscending ? 1 : -1);
    });
  }

  ///
  /// sort with Status and Name as the 2nd Sort
  void sortStatus(bool isAscending) {
    listUserInfo.sort((a, b) {
      if (a.status == b.status) {
        int aId = int.tryParse(a.name.replaceFirst('User_', ''))!;
        int bId = int.tryParse(b.name.replaceFirst('User_', ''))!;
        return (aId - bId);
      } else if (a.status) {
        return isAscending ? 1 : -1;
      } else {
        return isAscending ? -1 : 1;
      }
    });
  }
}
