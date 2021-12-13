// ignore_for_file: camel_case_types, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class goOutPage extends StatefulWidget {
  const goOutPage({Key? key}) : super(key: key);

  @override
  _goOutPageState createState() => _goOutPageState();
}

class _goOutPageState extends State<goOutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            height: 100.0,
            width: double.infinity,
            color: Colors.yellow,
          ),
        ],


      ),

    );
  }
}
