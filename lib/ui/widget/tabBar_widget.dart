// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:cook2_flutter_app/model/discountCard.dart';
import 'package:cook2_flutter_app/ui/helper/global_color.dart';
import 'package:cook2_flutter_app/ui/widget/discountCardDetails.dart';
import 'package:flutter/material.dart';

Container tabBarWidget() {
  return Container(
    height: 300.0,
    width: double.infinity,
    child: DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: TabBar(
            labelPadding: EdgeInsets.all(10.0),
            indicatorColor: globalRedAccent,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: globalRedAccent,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            unselectedLabelStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0),
            tabs: [
              Tab(
                text: "Delivery",
              ),
              Tab(
                text: "Self Pickup",
              ),
            ]),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: TabBarView(
            children: <Widget>[
              Container(
                height: 200.0,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: discountCardExample.length,
                    itemBuilder: (BuildContext context, int index) {
                      return detailsCard(
                          ImgUrl: discountCardExample[index].imgUrl.toString(),
                          name1: discountCardExample[index].name.toString(),
                          discountt:
                              discountCardExample[index].discount.toString(),
                          name2: discountCardExample[index]
                              .explanation
                              .toString());
                    }),
              ),
              Center(
                child: Text("It's rainy here"),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
