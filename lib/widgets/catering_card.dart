// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sewa_kost_application/models/catering.dart';
import 'package:sewa_kost_application/pages/catering_page.dart';
import 'package:sewa_kost_application/pages/detail_catering_page.dart';

class CateringCard extends StatelessWidget {
  CateringCard(this.catering);

  final Catering catering;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(DetailCateringPage(
          catering: catering,
        ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.yellow.shade100,
        ),
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   width: 60,
            //   height: 60,
            //   child: Image.asset(catering.gambar),
            // ),
            Image.asset(catering.gambar),
            SizedBox(width: 29),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    catering.name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xff020202),
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    catering.harga,
                    style: TextStyle(
                      color: Color(0xff8d92a3),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 50),
          ],
        ),
      ),
    );
  }
}
