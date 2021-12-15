
// ignore_for_file: use_key_in_widget_constructors, camel_case_types, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:cook2_flutter_app/ui/helper/global_color.dart';
import 'package:cook2_flutter_app/ui/style/feature_cards_detailsTStyle.dart';
import 'package:cook2_flutter_app/ui/style/menuCardStyle.dart';
import 'package:flutter/material.dart';

class MenuCardDetails extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String surname;

  const MenuCardDetails(
      {Key? key,
      required this.imgUrl,
      required this.name,
      required this.surname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Center(
        child: Container(
          height: 130.0,
          width: MediaQuery.of(context).size.width - 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 130.0,
                width: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      image: NetworkImage(imgUrl), fit: BoxFit.cover),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                height: 100.0,
                width: 150.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: MenuCardStyle(Colors.black, FontWeight.bold),
                    ),
                    Text(
                      surname,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: MenuCardStyle(Colors.grey, FontWeight.w500),
                    ),
                    Text(
                      "50 % OFF USE CODE ZOMATO",
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: MenuCardStyle(globalRedAccent, FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40.0,
                width: 60.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    "4.7",
                    style: MenuCardStyle(Colors.white, FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
