import 'package:flutter/material.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'child_1_page.dart';
import 'child_2_page.dart';

//https://medium.com/flutter-community/flutter-communication-between-widgets-f5590230df1e
class ParentPage extends StatefulWidget {
  @override
  ParentPageState createState() => ParentPageState();
}

class ParentProvider extends InheritedWidget {
  final TabController? tabController;
  final Widget child;
  final String? title;

  ParentProvider({
    this.tabController,
    required this.child,
    this.title,
  }) : super(child: child);

  @override
  bool updateShouldNotify(ParentProvider oldWidget) {
    return true;
  }

  static ParentProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ParentProvider>();
}

class ParentPageState extends State<ParentPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  String myParentTitle = "My Parent Title";
  String? updateChild1Title;
  String? updateChild2Title;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  updateChild2(String text) {
    setState(() {
      updateChild2Title = text;
    });
  }

  updateParent(String text) {
    setState(() {
      myParentTitle = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ParentProvider(
      tabController: _tabController,
      title: updateChild2Title,
      child: Column(
        children: [
          ListTile(
            title: Text(
              myParentTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          UIUtils.getButton("Action 1", () {
            setState(() {
              updateChild1Title = "Update from Parent " +
                  DateTime.now().millisecondsSinceEpoch.toString();
            });
          }),
          TabBar(
            labelColor: Colors.red,
            indicatorColor: Colors.green,
            unselectedLabelColor: Colors.grey,
            controller: _tabController,
            tabs: [
              Tab(
                text: "First Tab",
                icon: Icon(Icons.check_circle),
              ),
              Tab(
                text: "Second Tab",
                icon: Icon(Icons.crop_square),
              )
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Child1Page(
                  title: updateChild1Title,
                  child2Action2: updateParent,
                  child2Action3: updateChild2,
                ),
                Child2Page(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
