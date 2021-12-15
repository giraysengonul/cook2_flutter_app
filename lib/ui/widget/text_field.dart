// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace

import 'package:cook2_flutter_app/ui/helper/global_color.dart';
import 'package:flutter/material.dart';

Container Text_Field(
  TextEditingController controller,
) {
  return Container(
    height: 50.0,
    width: double.infinity,
    child: TextField(

      controller: controller,
      cursorColor: Colors.red,
      style: TextStyle(color: Colors.black),
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        prefixIconColor: globalRedAccent,
        prefixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            )),
        hintText: "Search for restaurants, cuisines",
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    ),
  );
}
