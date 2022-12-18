import 'package:flutter/material.dart';
import 'package:sewa_kost_application/pages/catering_page.dart';
import 'package:sewa_kost_application/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<BottomNavigationBarItem> _myItem = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.holiday_village),
      label: "Cari Kost",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.food_bank),
      label: "Catering",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Profile",
    ),
  ];

  final List<Widget> _myPages = [
    HomePage(),
    CateringPage(),
    HomePage(),
    HomePage(),
  ];

  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _myPages.elementAt(_pageIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffF0E9A4),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: _pageIndex,
        items: _myItem,
        onTap: (int newIndex) {
          setState(() {
            _pageIndex = newIndex;
          });
        },
      ),
    );
  }
}
