/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class DummyHouse {
  static const int available = 1;
  static const int booked = 2;
  static const int sold = 3;
  static const int lock = 4;

  String price;
  int status;
  bool isSelected;

  DummyHouse(
    this.price,
    this.status,
    this.isSelected,
  );
}
