import 'package:flutter/material.dart';
import 'package:flutter_task_5/Homepage/details.dart';
import 'package:flutter_task_5/Homepage/form_keluhan.dart';
import 'package:flutter_task_5/Homepage/home.dart';

class CustomBottomNavbar extends StatelessWidget {
  CustomBottomNavbar({Key? key}) : super(key: key);

  final int _currentIndex = 0;
  final tabs = [
    const Home(),
    FormKeluhan(),
    const Detail(),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.amber,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.blueGrey[800],
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Users',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info_outline),
          label: 'Details',
        ),
      ],
    );
  }
}
