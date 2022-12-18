// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sewa_kost_application/models/menu.dart';

class MenuCard extends StatelessWidget {
  MenuCard(this.menu);

  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            Image.asset(menu.gambar),
            SizedBox(width: 29),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    menu.name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xff020202),
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    menu.harga,
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
