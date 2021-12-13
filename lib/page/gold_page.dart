// ignore_for_file: camel_case_types, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class goldPage extends StatefulWidget {
  const goldPage({Key? key}) : super(key: key);

  @override
  _goldPageState createState() => _goldPageState();
}

class _goldPageState extends State<goldPage> {
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
            color: Colors.blue,
          ),
        ],


      ),

    );
  }
}
