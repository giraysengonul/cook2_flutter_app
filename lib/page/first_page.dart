import 'package:cook2_flutter_app/page/go_out_page.dart';
import 'package:cook2_flutter_app/page/gold_page.dart';
import 'package:cook2_flutter_app/page/sneak_peek_page.dart';
import 'package:cook2_flutter_app/ui/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'order_page.dart';
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_const_constructors

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
      body: _selectedIndex==0?OrderPage():_selectedIndex==1?GoOutPage():_selectedIndex==2?GoldPage():SneakPeekPage(),
    );
  }
}
