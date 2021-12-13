// ignore_for_file: camel_case_types, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:cook2_flutter_app/ui/helper/global_color.dart';
import 'package:cook2_flutter_app/ui/helper/icon_page.dart';
import 'package:cook2_flutter_app/ui/helper/textStyle_page.dart';
import 'package:cook2_flutter_app/ui/widget/text_field.dart';
import 'package:flutter/material.dart';

class orderPage extends StatefulWidget {
  const orderPage({Key? key}) : super(key: key);

  @override
  _orderPageState createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                        style: nameLocationTextStyle,
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
            //--------------------TextField--------------
            text_field(searchController),
            SizedBox(
              height: 10.0,
            ),
            //--------------------tabBar--------------
            Container(
              height: 230.0,
              width: double.infinity,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
