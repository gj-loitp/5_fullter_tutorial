import 'package:com.roy93group.flutter_tutorial/lib/common/const/ColorConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/TimeUtils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/todo/controller/controller_note.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/todo/model/note.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'add_note_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class TabNoteAll extends GetWidget {
  final ControllerNote _controllerNote = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.appColor,
        centerTitle: false,
        title: Text(
          "All",
          style: TextStyle(
            color: Colors.white,
            fontSize: DimenConstants.txtMedium,
          ),
        ), systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(DimenConstants.marginPaddingLarge),
        child: _buildList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _addNote();
        },
      ),
    );
  }

  Widget _buildList() {
    return Obx(() {
      int length = _controllerNote.listNote.length;
      if (length == 0) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/ic_cancel.png",
              width: 70,
              height: 70,
            ),
            SizedBox(height: DimenConstants.marginPaddingMedium),
            Text(
              "You have no task.\nPlease click Add button below to add some task.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: DimenConstants.txtMedium,
              ),
            ),
          ],
        );
      } else {
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: _controllerNote.listNote.length,
          itemBuilder: (context, index) {
            return _buildRow(_controllerNote.listNote[index], index);
          },
        );
      }
    });
  }

  Widget _buildRow(Note note, int index) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        0,
        DimenConstants.marginPaddingMedium,
        0,
        DimenConstants.marginPaddingMedium,
      ),
      child: Container(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(15),
              blurRadius: 0.5, // soften the shadow
              spreadRadius: 0.5, //extend the shadow
              offset: Offset(
                1.5, // Move to right 10  horizontally
                1.5, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  TimeUtils.convertFromMillisecondsSinceEpoch(
                      note.millisecondsSinceEpoch, TimeUtils.FORMAT_1),
                  style: TextStyle(
                    fontSize: DimenConstants.txtSmall,
                    color: Colors.blue,
                  ),
                ),
                Spacer(),
                Checkbox(
                  activeColor: Colors.blue,
                  tristate: false,
                  value: note.isComplete,
                  onChanged: (value) {
                    _controllerNote.setNoteComplete(note);
                  },
                ),
              ],
            ),
            _buildHorizontalDivider(),
            SizedBox(height: DimenConstants.marginPaddingMedium),
            Text(
              note.title,
              style: TextStyle(
                fontSize: DimenConstants.txtLarge,
                color: Colors.black,
              ),
            ),
            SizedBox(height: DimenConstants.marginPaddingMedium),
            Text(
              note.content,
              style: TextStyle(
                fontSize: DimenConstants.txtMedium,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHorizontalDivider() {
    return Container(
      margin: EdgeInsets.all(0.0),
      height: 1,
      width: double.maxFinite,
      color: Color(0xffECECEC),
    );
  }

  void _addNote() {
    Get.to(AddNoteScreen());
  }
}
