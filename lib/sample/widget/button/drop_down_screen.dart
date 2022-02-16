import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class DropDownScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DropDownScreenState();
  }
}

class DropDownScreenState extends State<DropDownScreen> {
  List _listFruit = ["Apple", "Banana", "Pineapple", "Mango", "Grapes"];
  List<DropdownMenuItem<String>>? _listDropdownMenu;
  String? _selectedFruit;

  @override
  void initState() {
    _listDropdownMenu = buildAndGetDropDownMenuItems(_listFruit);
    _selectedFruit = _listDropdownMenu?[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List fruits) {
    List<DropdownMenuItem<String>> items = [];
    for (String fruit in fruits) {
      items.add(DropdownMenuItem(value: fruit, child: Text(fruit)));
    }
    return items;
  }

  void changedDropDownItem(String? selectedFruit) {
    if (selectedFruit == null) {
      return;
    }
    handleChange(selectedFruit);
    setState(() {
      _selectedFruit = selectedFruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "DropDownScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              UIUtils.getText("Please choose a fruit: "),
              DropdownButton(
                value: _selectedFruit,
                items: _listDropdownMenu,
                onChanged: changedDropDownItem,
              )
            ],
          ),
        ),
      ),
    );
  }
}

void handleChange(String selectedFruit) {
  print("handleChange selectedFruit " + selectedFruit);
}
