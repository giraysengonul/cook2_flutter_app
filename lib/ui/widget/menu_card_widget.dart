

// ignore_for_file: sized_box_for_whitespace

import 'package:cook2_flutter_app/model/menuCard.dart';
import 'package:flutter/material.dart';

import 'menu_widget.dart';

Container MenuCardWidget() {
  return Container(
    height: 300.0,
    width: double.infinity,
    //color: Colors.red,
    child: ListView.builder(
        padding: EdgeInsets.only(bottom: 10.0),
        itemCount: menuCardExample.length,
        itemBuilder: (BuildContext context, int index) {
          return MenuCardDetails(
            imgUrl: menuCardExample[index].imgUrl.toString(),
            name: menuCardExample[index].name.toString(),
            surname: menuCardExample[index].surname.toString(),
          );
        }),
  );
}
