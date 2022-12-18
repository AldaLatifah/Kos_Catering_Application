// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LokasiCard extends StatelessWidget {
  const LokasiCard({Key? key, required this.gambar, required this.nama_lokasi})
      : super(key: key);

  final String gambar;
  final String nama_lokasi;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(gambar),
          radius: 50,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          nama_lokasi,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
