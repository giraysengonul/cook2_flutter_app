import 'package:cook2_flutter_app/page/goOut_page.dart';
import 'package:cook2_flutter_app/page/gold_page.dart';
import 'package:cook2_flutter_app/page/sneakPeek_page.dart';
import 'package:cook2_flutter_app/ui/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'order_page.dart';
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_const_constructors

class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  void _select(int _newValue) {
    setState(() {
      _selectedIndex = _newValue;
    });
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(_selectedIndex, _select),
      body: _selectedIndex==0?orderPage():_selectedIndex==1?goOutPage():_selectedIndex==2?goldPage():sneakPeekPage(),
    );
  }
}
