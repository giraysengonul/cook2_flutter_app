
// ignore_for_file: camel_case_types, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:cook2_flutter_app/ui/style/feature_cards_detailsTStyle.dart';
import 'package:flutter/material.dart';

class FeatureCardsDetails extends StatelessWidget {
  final String imgUrl;
  final String title;
  const FeatureCardsDetails(
      {Key? key, required this.imgUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20.0),
      borderOnForeground: false,
      child: Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Container(
              height: 110.0,
              width: 100.0,
              decoration: BoxDecoration(
                  // color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10.0,
                        offset: Offset(-2.0, .0),
                        color: Colors.black.withOpacity(.3)),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey[200],
                      image: DecorationImage(
                          image: NetworkImage(imgUrl), fit: BoxFit.contain),
                    ),
                  ),
                  Text(
                    title,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    style: FeatureCDTStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
