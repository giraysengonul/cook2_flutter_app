
// ignore_for_file: camel_case_types, unnecessary_this, prefer_collection_literals

import 'package:flutter/material.dart';

class featureCards {
  String? imgUrl;
  String? title;

  featureCards({required this.imgUrl, required this.title});

  featureCards.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    data['title'] = this.title;
    return data;
  }
}

List<featureCards> featureCardsExample = [
  featureCards(
    imgUrl:
        "https://cdn.pixabay.com/photo/2018/04/18/20/07/delivery-truck-3331471_1280.png",
    title: "Express Delivery",
  ),
  featureCards(
    imgUrl:
        "https://cdn.pixabay.com/photo/2016/12/18/12/49/cyber-security-1915628_1280.png",
    title: "Safely Sealed",
  ),
  featureCards(
    imgUrl:
        "https://cdn.pixabay.com/photo/2021/04/16/12/38/discount-6183488_1280.png",
    title: "Great Offers",
  ),
  featureCards(
    imgUrl:
        "https://cdn.pixabay.com/photo/2015/10/31/12/24/reception-1015489__480.jpg",
    title: "New Arrivals",
  ),
  featureCards(
    imgUrl:
        "https://cdn.pixabay.com/photo/2017/03/30/06/29/egg-2187345__480.png",
    title: "Trending Places",
  ),
];
