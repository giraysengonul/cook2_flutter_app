import 'package:flutter/material.dart';
// ignore_for_file: camel_case_types

class discountCard {
  String? name;
  String? imgUrl;
  String? explanation;
  int? discount;

  discountCard({this.name, this.imgUrl, this.explanation, this.discount});

  discountCard.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    imgUrl = json['imgUrl'];
    explanation = json['explanation'];
    discount = json['discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['imgUrl'] = imgUrl;
    data['explanation'] = explanation;
    data['discount'] = discount;
    return data;
  }
}

List <discountCard> discountCardExample = [
  discountCard(
    name: "EPIC DEALS",
    imgUrl:
    "https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_1280.jpg",
    explanation: "On legendary restaurants",
    discount: 40,
  ),
  discountCard(
    name: "EPIC DEALS",
    imgUrl:
        "https://cdn.pixabay.com/photo/2016/04/09/09/22/pizza-1317699_1280.jpg",
    explanation: "On legendary restaurants",
    discount: 40,
  ),
  discountCard(
    name: "EPIC DEALS",
    imgUrl:
        "https://cdn.pixabay.com/photo/2016/03/05/23/02/barbecue-1239434_1280.jpg",
    explanation: "On legendary restaurants",
    discount: 40,
  ),
];


