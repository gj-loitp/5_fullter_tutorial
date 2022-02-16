import 'package:get/get.dart';
import 'package:hello_word/lib/core/base_controller.dart';

import 'model/dummy_floor.dart';
import 'model/dummy_header_description.dart';
import 'model/dummy_house.dart';
import 'model/dummy_model_indicator.dart';

class ControllerBook extends BaseController {
  var listDummyModelIndicator = <DummyModelIndicator>[].obs;
  var listDummyHeaderDescription = <DummyHeaderDescription>[].obs;
  var listDummyFloor = <DummyFloor>[].obs;

  void clearAllValue() {
    Get.delete<ControllerBook>();
  }

  void buildListDummyModelIndicator() {
    for (int i = 0; i < 20; i++) {
      DummyModelIndicator dummyModelIndicator = DummyModelIndicator(
        name: "Block S$i",
        no1: i,
        no2: i * 2,
        isSelected: i == 0 ? true : false,
      );
      listDummyModelIndicator.add(dummyModelIndicator);
    }
  }

  void setSelectIndicator(int index) {
    listDummyModelIndicator.forEach((element) {
      element.isSelected = false;
    });
    listDummyModelIndicator[index].isSelected = true;
    listDummyModelIndicator.refresh();
  }

  void buildListDummyHeaderDescription(int size) {
    for (int i = 0; i < size; i++) {
      DummyHeaderDescription dummyHeaderDescription = DummyHeaderDescription(
        "$i",
        "$i PN\n$i WC",
        "Hướng $i",
        i * 3.0,
      );
      listDummyHeaderDescription.add(dummyHeaderDescription);
    }
  }

  List<DummyHouse> _genListDummyHouse(int index, int size) {
    List<DummyHouse> listDummyHouse = [];
    for (int i = 0; i < size - 1; i++) {
      if (i % 4 == 0) {
        listDummyHouse.add(
          DummyHouse(
            "${i + index} VND",
            DummyHouse.available,
            false,
          ),
        );
      } else if (i % 3 == 0) {
        listDummyHouse.add(
          DummyHouse(
            "$i VND",
            DummyHouse.booked,
            false,
          ),
        );
      } else if (i % 2 == 0) {
        listDummyHouse.add(
          DummyHouse(
            "${i + index} VND",
            DummyHouse.sold,
            false,
          ),
        );
      } else {
        listDummyHouse.add(
          DummyHouse(
            "${i + index} VND",
            DummyHouse.lock,
            false,
          ),
        );
      }
    }
    return listDummyHouse;
  }

  void buildListDummyFloor(int size) {
    for (int i = 0; i < size; i++) {
      DummyFloor dummyFloor = DummyFloor(i, _genListDummyHouse(i, size));
      listDummyFloor.add(dummyFloor);
    }
  }

  void setSelectedDummyHouse(DummyHouse dummyHouse) {
    listDummyFloor.forEach((_dummyFloor) {
      _dummyFloor.listDummyHouse.forEach((_dummyHouse) {
        if (_dummyHouse == dummyHouse) {
          _dummyHouse.isSelected = !_dummyHouse.isSelected;
        } else {
          _dummyHouse.isSelected = false;
        }
      });
    });
    listDummyFloor.refresh();
  }
}
