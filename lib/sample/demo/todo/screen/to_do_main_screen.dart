import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/sample/demo/todo/controller/controller_note.dart';

import 'tab_note_all.dart';
import 'tab_note_complete.dart';
import 'tab_note_in_complete.dart';

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
        color: Colors.blue,
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
