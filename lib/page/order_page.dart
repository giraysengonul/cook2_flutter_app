
// ignore_for_file: camel_case_types, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:cook2_flutter_app/model/featureCards.dart';
import 'package:cook2_flutter_app/model/menuCard.dart';
import 'package:cook2_flutter_app/ui/helper/global_color.dart';
import 'package:cook2_flutter_app/ui/helper/icon_page.dart';
import 'package:cook2_flutter_app/ui/helper/textStyle_page.dart';
import 'package:cook2_flutter_app/ui/widget/feature_cards_details.dart';
import 'package:cook2_flutter_app/ui/widget/features_widget.dart';
import 'package:cook2_flutter_app/ui/widget/menu_card_widget.dart';
import 'package:cook2_flutter_app/ui/widget/menu_widget.dart';
import 'package:cook2_flutter_app/ui/widget/tabBar_widget.dart';
import 'package:cook2_flutter_app/ui/widget/text_field.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  TextEditingController searchController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                height: 50.0,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        locationIcon,
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "234-Mars, Hakkı",
                          style: NameLocationTextStyle,
                        ),
                      ],
                    ),
                    Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        //  borderRadius: BorderRadius.circular(20.0),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://avatars.githubusercontent.com/u/56843071?v=4"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              //--------------------TextField-----------
              Text_Field(searchController),
              SizedBox(
                height: 10.0,
              ),

              //--------------------tabBar--------------
              TabBarWidget(),
              SizedBox(
                height: 15.0,
              ),
              //-------------------features-------------
              FeaturesWidget(),
              SizedBox(
                height: 10.0,
              ),
              //-------------------menu-----------------
              MenuCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
