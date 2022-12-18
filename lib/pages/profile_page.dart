// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? name;

  getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      name = prefs.getString('name');
    });
  }

  @override
  Widget build(BuildContext context) {
    getPrefs();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF0E9A4),
        title: Text(
          "Profile",
          style: GoogleFonts.poppins(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/Sinar Kost putra.jpg"),
            radius: 50,
          ),
          SizedBox(
            height: 10,
          ),
          Center(child: Text(name ?? ""))
        ],
      ),
    );
  }
}
