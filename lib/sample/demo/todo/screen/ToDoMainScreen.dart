import 'package:com.roy93group.flutter_tutorial/lib/common/const/ColorConstants.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/todo/controller/ControllerNote.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'TabNoteAll.dart';
import 'TabNoteComplete.dart';
import 'TabNoteIncomplete.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ToDoMainScreen extends StatefulWidget {
  final ControllerNote _controllerNote = Get.put(ControllerNote());

  @override
  ToDoMainScreenState createState() => ToDoMainScreenState();
}

// SingleTickerProviderStateMixin is used for animation
class ToDoMainScreenState extends State<ToDoMainScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          TabNoteAll(),
          TabNoteComplete(),
          TabNoteIncomplete(),
        ],
        controller: _tabController,
      ),
      bottomNavigationBar: Material(
        color: ColorConstants.appColor,
        child: TabBar(
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.event_note),
              text: "All",
            ),
            Tab(
              icon: Icon(Icons.event_available),
              text: "Complete",
            ),
            Tab(
              icon: Icon(Icons.event_busy),
              text: "Incomplete",
            ),
          ],
          // setup the controller
          controller: _tabController,
        ),
      ),
    );
  }
}
