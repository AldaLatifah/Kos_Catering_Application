// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_kost_application/models/catering.dart';
import 'package:sewa_kost_application/models/menu.dart';
import 'package:sewa_kost_application/widgets/catering_card.dart';

class CateringPage extends StatefulWidget {
  const CateringPage({Key? key}) : super(key: key);

  @override
  State<CateringPage> createState() => _CateringPageState();
}

class _CateringPageState extends State<CateringPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF0E9A4),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Catering",
                  style: GoogleFonts.poppins(color: Colors.black),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.food_bank,
                  color: Colors.black,
                )
              ],
            ),

            // Padding(
            //   padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            //   child: Text("Cari Kos Sesuai Keinginan Anda"),
            // ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                CateringCard(
                  Catering(
                    "a",
                    "a",
                    "a",
                    "a",
                    "assets/JK KOST.jpg",
                    "a",
                    Menu(
                      "nasi_goreng",
                      "assets/JK KOST.jpg",
                      "a",
                      "a",
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
