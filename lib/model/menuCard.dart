
// ignore_for_file: camel_case_types, prefer_collection_literals

import 'package:flutter/material.dart';

class menuCard {
  String? imgUrl;
  String? name;
  String? surname;

  menuCard({required this.imgUrl, required this.name, required this.surname});

  menuCard.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    name = json['name'];
    surname = json['surname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['imgUrl'] = imgUrl;
    data['name'] = name;
    data['surname'] = surname;
    return data;
  }
}

List<menuCard> menuCardExample = [
  menuCard(
      imgUrl:
          "https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466__480.jpg",
      name: "Le Tavern Grill",
      surname: "Fast food, Cafe, Chinese"),
  menuCard(
      imgUrl:
          "https://cdn.pixabay.com/photo/2017/11/25/17/17/sandwich-2977251__340.jpg",
      name: "Le Tavern Grill",
      surname: "Fast food, Cafe, Chinese"),
  menuCard(
      imgUrl:
          "https://cdn.pixabay.com/photo/2017/11/25/17/17/sandwich-2977251__340.jpg",
      name: "Le Tavern Grill",
      surname: "Fast food, Cafe, Chinese"),
];
