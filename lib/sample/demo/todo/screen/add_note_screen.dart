import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/TimeUtils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/todo/controller/controller_note.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/todo/controller/controller_note_add.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/todo/model/note.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class AddNoteScreen extends StatefulWidget {
  @override
  AddNoteScreenState createState() => AddNoteScreenState();
}

class AddNoteScreenState extends State<AddNoteScreen> {
  final ControllerNoteAdd _controllerNoteAdd = Get.put(ControllerNoteAdd());
  final ControllerNote _controllerNote = Get.put(ControllerNote());

  @override
  void dispose() {
    _controllerNoteAdd.clearAllValue();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: false,
        title: Text(
          "Create your task",
          style: TextStyle(
            color: Colors.white,
            fontSize: DimenConstants.txtMedium,
          ),
        ), systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(DimenConstants.marginPaddingLarge),
        child: _buildInput(),
      ),
      floatingActionButton: Obx(() {
        bool isValidInput = _controllerNoteAdd.isValidInput.value;
        return FloatingActionButton(
          backgroundColor: isValidInput == true ? Colors.blue : Colors.grey,
          child: Icon(Icons.done_all),
          onPressed: (isValidInput == true)
              ? () {
                  _addNote();
                }
              : null,
        );
      }),
    );
  }

  Widget _buildInput() {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Text(
          "Time: " +
              TimeUtils.convertFromMillisecondsSinceEpoch(
                  DateTime.now().millisecondsSinceEpoch, TimeUtils.FORMAT_1),
          style:
              TextStyle(color: Colors.grey, fontSize: DimenConstants.txtMedium),
        ),
        SizedBox(height: DimenConstants.heightButton),
        Text(
          "Title",
          style:
              TextStyle(color: Colors.grey, fontSize: DimenConstants.txtMedium),
        ),
        SizedBox(height: DimenConstants.marginPaddingSmall),
        TextField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.multiline,
          minLines: 1,
          //Normal textInputField will be displayed
          maxLines: 5,
          // wh
          maxLength: 200,
          // en user pre
          style: TextStyle(
            fontSize: DimenConstants.txtMedium,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            hintStyle: TextStyle(
              fontSize: DimenConstants.txtMedium,
              color: Colors.grey,
            ),
            hintText: "Type title",
            suffixIcon: Icon(Icons.create),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          onChanged: (string) {
            _controllerNoteAdd.setTitle(string);
          }, // / ill adapt to it
        ),
        SizedBox(height: DimenConstants.heightButton),
        Text(
          "Content",
          style:
              TextStyle(color: Colors.grey, fontSize: DimenConstants.txtMedium),
        ),
        SizedBox(height: DimenConstants.marginPaddingSmall),
        TextField(
          // textInputAction: TextInputAction.done,
          keyboardType: TextInputType.multiline,
          minLines: 1,
          //Normal textInputField will be displayed
          maxLines: null,
          // wh
          decoration: InputDecoration(
            hintStyle: TextStyle(
              fontSize: DimenConstants.txtMedium,
              color: Colors.grey,
            ),
            hintText: "Type content",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          maxLength: 10000,
          onChanged: (string) {
            _controllerNoteAdd.setContent(string);
          }, //
        ),
      ],
    );
  }

  void _addNote() {
    Note note = Note(
      _controllerNoteAdd.title.value,
      _controllerNoteAdd.content.value,
      DateTime.now().millisecondsSinceEpoch,
      false,
    );
    _controllerNote.addNote(note);
    Get.back();
  }
}
