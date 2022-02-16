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
