// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sewa_kost_application/models/catering.dart';
import 'package:sewa_kost_application/models/kost.dart';
import 'package:sewa_kost_application/models/menu.dart';
import 'package:sewa_kost_application/widgets/menu_card.dart';

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
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.catering.gambar,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.catering.name,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  top: 12.0,
                ),
                child: Text(
                  "Alamat ${widget.catering.alamat}",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Pemilik : ${widget.catering.pemilik}"),
                    Text(widget.catering.harga),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  top: 8.0,
                ),
                child: Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star_border)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 12),
                child: Text(
                  "MENU",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    MenuCard(
                      Menu(
                        widget.catering.menu.name,
                        widget.catering.menu.gambar,
                        widget.catering.menu.rate,
                        widget.catering.menu.harga,
                      ),
                    ),
                    MenuCard(
                      Menu(
                        widget.catering.menu.name,
                        widget.catering.menu.gambar,
                        widget.catering.menu.rate,
                        widget.catering.menu.harga,
                      ),
                    ),
                    MenuCard(
                      Menu(
                        widget.catering.menu.name,
                        widget.catering.menu.gambar,
                        widget.catering.menu.rate,
                        widget.catering.menu.harga,
                      ),
                    ),
                    MenuCard(
                      Menu(
                        widget.catering.menu.name,
                        widget.catering.menu.gambar,
                        widget.catering.menu.rate,
                        widget.catering.menu.harga,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
