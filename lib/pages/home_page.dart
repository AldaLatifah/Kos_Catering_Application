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
                            "assets/KOST KARTIKA ITK.jpg",
                            "4.5",
                            "Rp. 500.000/org",
                            -1.1436951,
                            116.870669,
                            "2",
                            "ini deskripsi",
                            "+6281521886490"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      KostCard(
                        Kost(
                            "Kost Putra Al Ikhwan ITK ",
                            "Balikpapan Utara",
                            "assets/kost2.png",
                            "4.5",
                            "Rp. 550.000/org",
                            -1.1481127,
                            116.8757036,
                            "2",
                            "Kost Putra Al Ikhwan ITK  merupakan kost putra, yang berada sangat dekat dengan Institut Teknologi Kalimantan, yang dapat diakses langsung menggunakan kendaraan umum apa saja, fasilitas yang ada pada JK kost ini, yaitu lemari, meja belajar, kasur, kamar mandi dalam, parkiran kost, CCTV",
                            "+6287812193116"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      KostCard(
                        Kost(
                            "SINAR KOST PUTRA ITK",
                            "Balikpapan",
                            "assets/KOST KARTIKA ITK.jpg",
                            "4.5",
                            "Rp. 800.000/org",
                            -1.1432033,
                            116.8694164,
                            "1",
                            "Sinar kost putra ITK Balikapapan  merupakan kost putra, yang berada sangat dekat dengan Institut Teknologi Kalimantan, yang dapat diakses langsung menggunakan kendaraan umum apa saja, fasilitas yang ada pada JK kost ini yaitu, lemari, meja belajar, kasur, kamar mandi dalam, WIFI, parkiran kost, CCTV",
                            "+6281282661400"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Cari Wilayah",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      LokasiCard(
                        gambar: "assets/KOST KARTIKA ITK.jpg",
                        nama_lokasi: "Balikpapan Utara",
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      LokasiCard(
                        gambar: "assets/KOST KARTIKA ITK.jpg",
                        nama_lokasi: "Samarinda",
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
