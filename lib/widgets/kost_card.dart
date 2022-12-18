// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_kost_application/models/kost.dart';
import 'package:get/get.dart';
import 'package:sewa_kost_application/pages/detail_kost_page.dart';
import 'package:sewa_kost_application/pages/maps.dart';

class KostCard extends StatelessWidget {
  const KostCard(this.kost);

  final Kost kost;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(DetailKostPage(kost: kost));
      },
      child: Container(
        height: 230,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.amber.shade100,
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                height: 150,
                width: 120,
                color: Color(0xffF6F7F8),
                child: Image.asset(
                  kost.gambar,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              kost.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff020202),
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  kost.lokasi_kota,
                  style: GoogleFonts.poppins(
                      fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      kost.rate,
                      style: GoogleFonts.poppins(
                        fontSize: 8,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 8,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              kost.harga,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
