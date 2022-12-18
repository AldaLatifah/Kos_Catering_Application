// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_kost_application/pages/main_page.dart';
import 'package:sewa_kost_application/pages/register_page.dart';
import 'package:sewa_kost_application/services/user_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool _obscureText = true;
  UserService userService = UserService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0E9A4),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo.png",
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 3,
              ),
              Text(
                "Login",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Login to your account ",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                margin: const EdgeInsets.only(
                  top: 30,
                ),
                child: TextField(
                  controller: usernameController,
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
                      hintText: "Username",
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                margin: const EdgeInsets.only(
                  top: 30,
                ),
                child: TextField(
                  controller: passwordController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff969697)),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                child: ElevatedButton(
                  onPressed: () async {
                    var checkLogin = await userService.getLogin(
                      usernameController.text,
                      passwordController.text,
                    );

                    if (checkLogin != null) {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      prefs.setBool('isLogin', true);
                      prefs.setString('username', checkLogin.username);
                      prefs.setString('email', checkLogin.email);
                      prefs.setString('nik', checkLogin.nik);
                      prefs.setString('name', checkLogin.name);

                      Get.offAll(MainPage());
                    } else {
                      Get.snackbar("Gagal", "Cek Email dan Password");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    primary: Colors.red,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      'Log In',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: (MediaQuery.of(context).size.width / 2) - 60,
                      height: 1,
                      color: Color(0xff969697),
                    ),
                    Text(
                      'or',
                      style: TextStyle(
                        color: Color(0xff969697),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width / 2) - 60,
                      height: 1,
                      color: Color(0xff969697),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(RegisterPage());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    primary: Colors.grey,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      'Register',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
