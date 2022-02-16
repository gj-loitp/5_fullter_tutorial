import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class AnimatedListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedListScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: AnimatedListWidget(),
      ),
    );
  }
}

class AnimatedListWidget extends StatefulWidget {
  @override
  _AnimatedListWidgetState createState() => _AnimatedListWidgetState();
}

class _AnimatedListWidgetState extends State<AnimatedListWidget> {
  // the GlobalKey is needed to animate the list
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  // backing data
  List<String> _data = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];
  int itemNo = 4;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AnimatedList(
            /// Key to call remove and insert item methods from anywhere
            key: _listKey,
            initialItemCount: _data.length,
            itemBuilder: (context, index, animation) {
              return _buildItem(_data[index], animation, index);
            },
          ),
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          onPressed: () => _insertSingleItem(),
        ),
      ],
    );
  }

  Widget _buildItem(String item, Animation animation, int index) {
    return SizeTransition(
      sizeFactor: animation as Animation<double>,
      child: Card(
        elevation: 5.0,
        child: ListTile(
          title: Text(
            item,
            style: TextStyle(fontSize: 20),
          ),
          trailing: GestureDetector(
            child: Icon(
              Icons.remove_circle,
              color: Colors.red,
            ),
            onTap: () {
              _removeSingleItems(index);
            },
          ),
        ),
      ),
    );
  }

  /// Method to add an item to an index in a list
  void _insertSingleItem() {
    int insertIndex;
    if (_data.length > 0) {
      insertIndex = _data.length;
    } else {
      insertIndex = 0;
    }
    String item = "Item ${itemNo = itemNo + 1}";
    _data.insert(insertIndex, item);
    _listKey.currentState!.insertItem(insertIndex);
  }

  /// Method to remove an item at an index from the list
  void _removeSingleItems(int removeAt) {
    int removeIndex = removeAt;
    String removedItem = _data.removeAt(removeIndex);
    // This builder is just so that the animation has something
    // to work with before it disappears from view since the original
    // has already been deleted.
    AnimatedListRemovedItemBuilder builder = (context, animation) {
      // A method to build the Card widget.
      return _buildItem(removedItem, animation, removeAt);
    };
    _listKey.currentState!.removeItem(removeIndex, builder);
  }
}
