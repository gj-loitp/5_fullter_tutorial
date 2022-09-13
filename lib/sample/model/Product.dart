/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class Product {
  late String name;
  late String description;
  int? price;
  late String image;
  int? rating;

  Product(
      String name, String description, int price, String image, int rating) {
    this.name = name;
    this.description = description;
    this.price = price;
    this.image = image;
    this.rating = rating;
  }
}
