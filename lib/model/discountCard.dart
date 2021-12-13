
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
