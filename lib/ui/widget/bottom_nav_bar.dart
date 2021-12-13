import 'package:flutter/material.dart';

BottomNavigationBar buildBottomNavigationBar(int _selectedIndex, _select) {
  return BottomNavigationBar(
    selectedItemColor: Colors.redAccent,
    unselectedItemColor: Colors.grey,
    onTap: _select,
    currentIndex: _selectedIndex,
    items: const [
      BottomNavigationBarItem(
          icon: ImageIcon(NetworkImage(
              "https://cdn.pixabay.com/photo/2013/07/12/14/53/cart-148964_1280.png")),
          label: "Order"),
      BottomNavigationBarItem(
          icon: ImageIcon(NetworkImage(
              "https://cdn.pixabay.com/photo/2016/08/04/16/36/feet-1569457_1280.png")),
          label: "Go Out"),
      BottomNavigationBarItem(
          icon: ImageIcon(NetworkImage(
              "https://cdn.pixabay.com/photo/2020/08/12/16/09/dollar-5483042_1280.png")),
          label: "Gold"),
      BottomNavigationBarItem(
          icon: ImageIcon(NetworkImage(
              "https://cdn.pixabay.com/photo/2014/03/25/15/25/television-296783_1280.png")),
          label: "Order"),
    ],
  );
}
