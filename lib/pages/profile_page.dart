// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_kost_application/pages/data_diri_page.dart';
import 'package:sewa_kost_application/pages/login_page.dart';
import 'package:sewa_kost_application/widgets/profile_card.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? name;

  getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      name = prefs.getString('name');
    });
  }

  @override
  Widget build(BuildContext context) {
    getPrefs();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF0E9A4),
        title: Text(
          "Profile",
          style: GoogleFonts.poppins(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/profile.png"),
            radius: 50,
          ),
          SizedBox(
            height: 10,
          ),
          Center(child: Text(name ?? "")),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Get.to(DataDiriPage());
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.yellow.withOpacity(0.5),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Data Diri"),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow.withOpacity(0.5),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.note),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Syarat Dan Ketentuan"),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow.withOpacity(0.5),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.privacy_tip),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Kebijakan Privasi"),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Column(
              children: [
                ClipOval(
                  child: Material(
                    color: Colors.yellow.shade200, // Button color
                    child: InkWell(
                      splashColor: Colors.red, // Splash color
                      onTap: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();

                        prefs.remove("isLogin");
                        prefs.remove("name");
                        prefs.remove("username");
                        prefs.remove("email");

                        Get.offAll(LoginPage());
                      },
                      child: SizedBox(
                          width: 56, height: 56, child: Icon(Icons.logout)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Logout",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
