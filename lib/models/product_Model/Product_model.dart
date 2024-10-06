// ignore_for_file: file_names

import 'dart:convert';

Productmodel productmodelFromJson(String str) =>
    Productmodel.fromJson(json.decode(str));

String productmodelToJson(Productmodel data) => json.encode(data.toJson());

class Productmodel {
  String image;
  String id;
  bool isFavourite;
  String name;
  String price;
  String description;
  String status;
  Productmodel({
    required this.image,
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.status,
    required this.isFavourite,
  });

  factory Productmodel.fromJson(Map<String, dynamic> json) => Productmodel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        isFavourite: false,
        status: json["status"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "description": description,
        "isFavourite": isFavourite,
        "price": price,
        "status": status,
      };
}
