class DummyModelIndicator {
  String? name;
  int? no1;
  int? no2;
  bool? isSelected;

  DummyModelIndicator({
    this.name,
    this.no1,
    this.no2,
    this.isSelected,
  });

  DummyModelIndicator.fromJson(dynamic json) {
    name = json["name"];
    no1 = json["no1"];
    no2 = json["no2"];
    isSelected = json["isSelected"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = name;
    map["no1"] = no1;
    map["no2"] = no2;
    map["isSelected"] = isSelected;
    return map;
  }
}
