// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataDiriPage extends StatefulWidget {
  const DataDiriPage({Key? key}) : super(key: key);

  @override
  State<DataDiriPage> createState() => _DataDiriPageState();
}

class _DataDiriPageState extends State<DataDiriPage> {
  String? name;
  String? username;
  String? email;
  String? nik;

  getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      name = prefs.getString('name');
      username = prefs.getString('username');
      email = prefs.getString('email');
      nik = prefs.getString('nik');
    });
  }

  @override
  Widget build(BuildContext context) {
    getPrefs();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF0E9A4),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Data Diri",
                  style: GoogleFonts.poppins(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text("Nama"),
                        SizedBox(
                          width: 60,
                        ),
                        Text(":"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(name ?? ""),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text("Username"),
                        SizedBox(
                          width: 35,
                        ),
                        Text(":"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(username ?? ""),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text("Email"),
                        SizedBox(
                          width: 65,
                        ),
                        Text(":"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(email ?? ""),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text("NIK"),
                        SizedBox(
                          width: 80,
                        ),
                        Text(":"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(nik ?? ""),
                      ],
                    ),
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
