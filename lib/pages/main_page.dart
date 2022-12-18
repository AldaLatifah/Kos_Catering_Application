import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sewa_kost_application/pages/catering_page.dart';
import 'package:sewa_kost_application/pages/home_page.dart';
import 'package:sewa_kost_application/pages/login_page.dart';
import 'package:sewa_kost_application/pages/profile_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    ProfilePage(),
  ];

  int _pageIndex = 0;

  @override
  void initState() {
    getPrefs();
    super.initState();
  }

  getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool? boolValue = prefs.getBool('isLogin');

    if (boolValue != true) {
      MainPage();
    } else {
      LoginPage();
    }
  }

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
