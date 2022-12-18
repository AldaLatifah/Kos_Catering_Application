// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_kost_application/models/kost.dart';
import 'package:sewa_kost_application/widgets/kost_card.dart';
import 'package:sewa_kost_application/widgets/lokasi_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime.shade200,
      appBar: AppBar(
        backgroundColor: const Color(0xffF0E9A4),
        title: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/logo.png",
                  width: 50,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Selamat Datang, Danu",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Cari Kos Sesuai Keinginan Anda",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    hintText: "Cari Kos",
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      KostCard(
                        Kost(
                          "KOST KARTIKA ITK",
                          "Balikpapan",
                          "https://www.google.com/maps?q=VV4C+G7F+KOST+KARTIKA+ITK,+Karang+Joang,+Balikpapan+Utara,+Balikpapan+City,+East+Kalimantan+76127&ftid=0x2df14be4fbf1ea97:0x2fb5685657184f4a&hl=id-ID&gl=id&entry=gps&lucs=karto&g_ep=CAISBjYuNDUuNRgAIKzfASoFa2FydG8%3D&g_st=iw",
                          "assets/KOST KARTIKA ITK.jpg",
                          "4.5",
                          "Rp. 500.000/org",
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      KostCard(
                        Kost(
                          "KOST KARTIKA ITK",
                          "Balikpapan",
                          "https://www.google.com/maps?q=VV4C+G7F+KOST+KARTIKA+ITK,+Karang+Joang,+Balikpapan+Utara,+Balikpapan+City,+East+Kalimantan+76127&ftid=0x2df14be4fbf1ea97:0x2fb5685657184f4a&hl=id-ID&gl=id&entry=gps&lucs=karto&g_ep=CAISBjYuNDUuNRgAIKzfASoFa2FydG8%3D&g_st=iw",
                          "assets/KOST KARTIKA ITK.jpg",
                          "4.5",
                          "Rp. 500.000/org",
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      KostCard(
                        Kost(
                          "KOST KARTIKA ITK",
                          "Balikpapan",
                          "https://www.google.com/maps?q=VV4C+G7F+KOST+KARTIKA+ITK,+Karang+Joang,+Balikpapan+Utara,+Balikpapan+City,+East+Kalimantan+76127&ftid=0x2df14be4fbf1ea97:0x2fb5685657184f4a&hl=id-ID&gl=id&entry=gps&lucs=karto&g_ep=CAISBjYuNDUuNRgAIKzfASoFa2FydG8%3D&g_st=iw",
                          "assets/KOST KARTIKA ITK.jpg",
                          "4.5",
                          "Rp. 500.000/org",
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      KostCard(
                        Kost(
                          "KOST KARTIKA ITK",
                          "Balikpapan",
                          "https://www.google.com/maps?q=VV4C+G7F+KOST+KARTIKA+ITK,+Karang+Joang,+Balikpapan+Utara,+Balikpapan+City,+East+Kalimantan+76127&ftid=0x2df14be4fbf1ea97:0x2fb5685657184f4a&hl=id-ID&gl=id&entry=gps&lucs=karto&g_ep=CAISBjYuNDUuNRgAIKzfASoFa2FydG8%3D&g_st=iw",
                          "assets/KOST KARTIKA ITK.jpg",
                          "4.5",
                          "Rp. 500.000/org",
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Cari Wilayah"),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 10,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      LokasiCard(
                        gambar: "assets/KOST KARTIKA ITK.jpg",
                        nama_lokasi: "Balikpapan",
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
