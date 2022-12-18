// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sewa_kost_application/models/catering.dart';
import 'package:sewa_kost_application/models/kost.dart';

class DetailCateringPage extends StatefulWidget {
  const DetailCateringPage({Key? key, required this.catering})
      : super(key: key);
  final Catering catering;
  @override
  State<DetailCateringPage> createState() => _DetailCateringPageState();
}

class _DetailCateringPageState extends State<DetailCateringPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF0E9A4),
        title: Text(
          widget.catering.name,
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.catering.gambar,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.catering.name),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Kost Putra"),
                  Text(widget.catering.harga),
                ],
              ),
            ),
            Center(
              child: Text("Tersisa 2 kamar"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Fasilitas"),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.wifi,
                          size: 50,
                        ),
                        Text("Wifi")
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.wifi,
                          size: 50,
                        ),
                        Text("Wifi")
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.wifi,
                          size: 50,
                        ),
                        Text("Wifi")
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Deskripsi"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("loremajjhajbajs anjjbd abhje"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Lokasi"),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  target: LatLng(-1.1436951, 116.870669),
                  zoom: 14.0,
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}