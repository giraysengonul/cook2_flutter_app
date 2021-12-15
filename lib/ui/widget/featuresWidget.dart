
import 'package:cook2_flutter_app/model/featureCards.dart';
import 'package:flutter/material.dart';

import 'featureCardsDetails.dart';

Container featuresWidget() {
  return Container(
    height: 100.0,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: featureCardsExample.length,
        itemBuilder: (BuildContext context, int index) {
          return featureCardsDetails(
            imgUrl: featureCardsExample[index].imgUrl.toString(),
            title: featureCardsExample[index].title.toString(),
          );
        }),
  );
}
