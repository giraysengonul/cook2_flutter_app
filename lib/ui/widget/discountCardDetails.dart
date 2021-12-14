

// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:cook2_flutter_app/model/discountCard.dart';
import 'package:cook2_flutter_app/ui/style/textStyle.dart';
import 'package:flutter/material.dart';

class detailsCard extends StatelessWidget  {

  final String ImgUrl;
  final String name1;
  final String discountt;
  final String name2;


  const detailsCard({Key? key, required this.ImgUrl,required this.name1,required this.discountt,required this.name2, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          height: 200.0,
          width: 280.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
                
                image: NetworkImage(ImgUrl),fit: BoxFit.cover),

          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(name1,style: textStyleDiscountHead),
              SizedBox(height: 5.0,),
              Text("$discountt % OFF",style: textStyleDiscountBody),
              SizedBox(height: 5.0,),
              Text(name2,style: textStyleDiscountChild),


            ],
          ),



        ),),

    );
  }}
