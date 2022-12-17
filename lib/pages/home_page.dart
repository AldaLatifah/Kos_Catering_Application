// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime.shade200,
      appBar: AppBar(
        backgroundColor: const Color(0xffF0E9A4),
        title: Row(
          children: [
            Image.asset(
              "assets/logo.png",
              width: 50,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Selamat Datang, Danu",
              style: GoogleFonts.poppins(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("yuhu"),
            ],
          )
        ],
      ),
    );
  }
}
