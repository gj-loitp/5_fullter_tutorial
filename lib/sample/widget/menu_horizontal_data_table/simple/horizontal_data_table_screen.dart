import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

import 'user.dart';

//https://pub.dev/packages/horizontal_data_table
class HorizontalDataTableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "HorizontalDataTableScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: DataTableHomePage(),
    );
  }
}

User user = User();

class DataTableHomePage extends StatefulWidget {
  DataTableHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _DataTableHomePageState createState() => _DataTableHomePageState();
}

class _DataTableHomePageState extends State<DataTableHomePage> {
  HDTRefreshController _hdtRefreshController = HDTRefreshController();
  static const int _sortName = 0;
  static const int _sortStatus = 1;
  bool _isAscending = true;
  int _sortType = _sortName;

  @override
  void initState() {
    user.initData(100);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _getBodyWidget();
  }

  Widget _getBodyWidget() {
    return Container(
      child: HorizontalDataTable(
        leftHandSideColumnWidth: 100,
        rightHandSideColumnWidth: 600,
        isFixedHeader: true,
        headerWidgets: _getTitleWidget(),
        leftSideItemBuilder: _generateFirstColumnRow,
        rightSideItemBuilder: _generateRightHandSideColumnRow,
        itemCount: user.listUserInfo.length,
        rowSeparatorWidget: const Divider(
          color: Colors.pink,
          height: 1.0,
          thickness: 0.0,
        ),
        elevation: 5,
        elevationColor: Colors.white,
        leftHandSideColBackgroundColor: Color(0x55ff0000),
        rightHandSideColBackgroundColor: Color(0xffffffff),
        enablePullToRefresh: true,
        refreshIndicator: const ClassicHeader(),
        // refreshIndicator: const WaterDropHeader(),
        // refreshIndicator: const CustomHeader(),
        // refreshIndicator: const LinkHeader(),
        // refreshIndicator: const MaterialClassicHeader(),
        // refreshIndicator: BezierHeader(),
        refreshIndicatorHeight: 60,
        onRefresh: () async {
          //Do sth
          await Future.delayed(const Duration(milliseconds: 1500));
          _hdtRefreshController.refreshCompleted();
        },
        htdRefreshController: _hdtRefreshController,
      ),
      height: MediaQuery.of(context).size.height,
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          primary: Colors.teal,
          backgroundColor: Colors.yellow,
          textStyle: TextStyle(
            fontStyle: FontStyle.italic,
          ),
          elevation: 5,
          side: BorderSide(color: Colors.pink, width: 2),
        ),
        child: _getTitleItemWidget(
          'Name' + (_sortType == _sortName ? (_isAscending ? '↓' : '↑') : ''),
          100,
          Colors.yellow,
        ),
        onPressed: () {
          _sortType = _sortName;
          _isAscending = !_isAscending;
          user.sortName(_isAscending);
          setState(() {});
        },
      ),
      TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          primary: Colors.teal,
          backgroundColor: Colors.yellow,
          textStyle: TextStyle(
            fontStyle: FontStyle.italic,
          ),
          elevation: 5,
          side: BorderSide(color: Colors.pink, width: 2),
        ),
        child: _getTitleItemWidget(
          'Status' +
              (_sortType == _sortStatus ? (_isAscending ? '↓' : '↑') : ''),
          100,
          Colors.green,
        ),
        onPressed: () {
          _sortType = _sortStatus;
          _isAscending = !_isAscending;
          user.sortStatus(_isAscending);
          setState(() {});
        },
      ),
      _getTitleItemWidget(
        "Phone",
        200,
        Colors.grey,
      ),
      _getTitleItemWidget(
        "Register",
        100,
        Colors.blue,
      ),
      _getTitleItemWidget(
        "Termination",
        200,
        Colors.orange,
      ),
    ];
  }

  Widget _getTitleItemWidget(
    String label,
    double width,
    Color bkgColor,
  ) {
    return Container(
      color: bkgColor,
      child: Text(
        label,
        style: TextStyle(
          fontSize: DimenConstants.txtLarge,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
      width: width,
      height: 56,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      alignment: Alignment.center,
    );
  }

  Widget _generateFirstColumnRow(
    BuildContext context,
    int index,
  ) {
    return Container(
      child: UIUtils.getText(user.listUserInfo[index].name),
      width: 100,
      height: 52,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.center,
    );
  }

  Widget _generateRightHandSideColumnRow(
    BuildContext context,
    int index,
  ) {
    return Row(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Icon(
                  user.listUserInfo[index].status
                      ? Icons.notifications_off
                      : Icons.notifications_active,
                  color: user.listUserInfo[index].status
                      ? Colors.red
                      : Colors.green),
              Text(user.listUserInfo[index].status ? "Disabled" : "Active")
            ],
          ),
          width: 100,
          height: 52,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          alignment: Alignment.center,
          color: Colors.lightGreen,
        ),
        Container(
          child: Text(user.listUserInfo[index].phone),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          alignment: Alignment.center,
          color: Colors.blueGrey,
        ),
        Container(
          child: Text(user.listUserInfo[index].registerDate),
          width: 100,
          height: 52,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          alignment: Alignment.center,
          color: Colors.lightBlue,
        ),
        Container(
          child: Text(user.listUserInfo[index].terminationDate),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          alignment: Alignment.center,
          color: Colors.orangeAccent,
        ),
      ],
    );
  }
}
