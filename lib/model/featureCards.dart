
// ignore_for_file: camel_case_types, unnecessary_this, prefer_collection_literals

import 'package:flutter/material.dart';

class FeatureCards {
  String? imgUrl;
  String? title;

  FeatureCards({required this.imgUrl, required this.title});

  FeatureCards.fromJson(Map<String, dynamic> json) {
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

List<FeatureCards> featureCardsExample = [
  FeatureCards(
    imgUrl:
        "https://cdn.pixabay.com/photo/2018/04/18/20/07/delivery-truck-3331471_1280.png",
    title: "Express Delivery",
  ),
  FeatureCards(
    imgUrl:
        "https://cdn.pixabay.com/photo/2016/12/18/12/49/cyber-security-1915628_1280.png",
    title: "Safely Sealed",
  ),
  FeatureCards(
    imgUrl:
        "https://cdn.pixabay.com/photo/2021/04/16/12/38/discount-6183488_1280.png",
    title: "Great Offers",
  ),
  FeatureCards(
    imgUrl:
        "https://cdn.pixabay.com/photo/2015/10/31/12/24/reception-1015489__480.jpg",
    title: "New Arrivals",
  ),
  FeatureCards(
    imgUrl:
        "https://cdn.pixabay.com/photo/2017/03/30/06/29/egg-2187345__480.png",
    title: "Trending Places",
  ),
];
