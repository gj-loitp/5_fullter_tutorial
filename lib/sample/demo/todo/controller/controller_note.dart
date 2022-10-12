import 'package:com.roy93group.flutter_tutorial/lib/core/BaseController.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/todo/model/note.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ControllerNote extends BaseController {
  var listNote = <Note>[].obs;
  var listNoteComplete = <Note>[].obs;
  var listNoteIncomplete = <Note>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  void clearAllValue() {
    Get.delete<ControllerNote>();
  }

  void addNote(Note note) {
    listNote.insert(0, note);

    _updateData();
  }

  int? _getIndex(Note note) {
    for (int i = 0; i < listNote.length; i++) {
      if (note.millisecondsSinceEpoch == listNote[i].millisecondsSinceEpoch) {
        return i;
      }
    }
    return null;
  }

  void setNoteComplete(Note note) {
    int index = _getIndex(note)!;
    listNote[index].isComplete = !listNote[index].isComplete;
    listNote.refresh();
    _updateData();
  }

  void _updateData() {
    var listTmpComplete = <Note>[];
    var listTmpIncomplete = <Note>[];
    listNote.forEach((element) {
      if (element.isComplete) {
        listTmpComplete.add(element);
      } else {
        listTmpIncomplete.add(element);
      }
    });
    listNoteComplete.clear();
    listNoteComplete.addAll(listTmpComplete);
    listNoteIncomplete.clear();
    listNoteIncomplete.addAll(listTmpIncomplete);
  }
}
