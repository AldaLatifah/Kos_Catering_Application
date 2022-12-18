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
  TextEditingController searchController = new TextEditingController();
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
                  "Catering Area",
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  margin: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(
                        color: Color(0xffAE7E73),
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff969697)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffAE7E73)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff969697)),
                      ),
                      hintText: "Cari Catering",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CateringCard(
                  Catering(
                    "a",
                    "a",
                    "a",
                    "a",
                    "assets/JK KOST.jpg",
                    "Rp. 500,000 per kotak",
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
