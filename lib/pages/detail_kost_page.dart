// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sewa_kost_application/models/kost.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailKostPage extends StatefulWidget {
  const DetailKostPage({Key? key, required this.kost}) : super(key: key);
  final Kost kost;
  @override
  State<DetailKostPage> createState() => _DetailKostPageState();
}

class _DetailKostPageState extends State<DetailKostPage> {
  @override
  Widget build(BuildContext context) {
    String telp = widget.kost.no_telp;
    final Uri _urlwa =
        Uri.parse('https://api.whatsapp.com/send?phone=${widget.kost.no_telp}');

    Future<void> _launchUrlWa() async {
      if (!await launchUrl(_urlwa)) {
        throw 'Could not launch $_urlwa';
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF0E9A4),
        title: Text(
          widget.kost.name,
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
                widget.kost.gambar,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Text(
                  widget.kost.name,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kost Putra"),
                    Text(
                      widget.kost.harga,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text("Tersisa ${widget.kost.sisa} kamar"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Text(
                  "Fasilitas",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
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
                            Icons.bed,
                            size: 50,
                          ),
                          Text("Kasur")
                        ],
                      ),
                      SizedBox(
                        width: 30,
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
                        width: 30,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.bathroom,
                            size: 50,
                          ),
                          Text("Kamar Mandi")
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.table_restaurant,
                            size: 50,
                          ),
                          Text("Meja Belajar")
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.camera,
                            size: 50,
                          ),
                          Text("CCTV")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Text(
                  "Deskripsi",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.kost.deskripsi),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Text(
                  "Lokasi",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(widget.kost.lat, widget.kost.long),
                    zoom: 15.0,
                  ),
                  markers: {
                    Marker(
                      markerId: const MarkerId("marker1"),
                      position: LatLng(widget.kost.lat, widget.kost.long),
                      draggable: true,
                      onDragEnd: (value) {
                        // value is the new position
                      },
                      // To do: custom marker icon
                    ),
                  },
                ),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _launchUrlWa();
        },
        backgroundColor: Colors.yellow.shade100,
        child: Text(
          "Pesan",
          style: GoogleFonts.poppins(color: Colors.black),
        ),
      ),
    );
  }
}
