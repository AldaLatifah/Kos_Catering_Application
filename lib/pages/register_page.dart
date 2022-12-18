// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_kost_application/models/user.dart';
import 'package:sewa_kost_application/pages/login_page.dart';
import 'package:sewa_kost_application/services/user_services.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController nikController = new TextEditingController();
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController rePasswordController = new TextEditingController();

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
              Text(
                "Register",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Create your account ",
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
                  controller: nikController,
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
                      hintText: "NIK",
                      prefixIcon: Icon(Icons.numbers)),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                margin: const EdgeInsets.only(
                  top: 30,
                ),
                child: TextField(
                  controller: nameController,
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
                      hintText: "Name",
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
                      prefixIcon: Icon(Icons.abc)),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                margin: const EdgeInsets.only(
                  top: 30,
                ),
                child: TextField(
                  controller: emailController,
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
                      hintText: "email",
                      prefixIcon: Icon(Icons.alternate_email)),
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
                      hintText: "Password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      prefixIcon: Icon(Icons.lock)),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                margin: const EdgeInsets.only(
                  top: 30,
                ),
                child: TextField(
                  obscureText: _obscureText,
                  controller: rePasswordController,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff969697)),
                      ),
                      hintText: "Konfirmasi Password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      prefixIcon: Icon(Icons.lock_person)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                child: ElevatedButton(
                  onPressed: () async {
                    if (rePasswordController.text != passwordController.text) {
                      Get.snackbar("Gagal", "Konfirmasi Password Salah");
                    } else {
                      await userService.addItem(
                        User(
                          nameController.text,
                          usernameController.text,
                          emailController.text,
                          passwordController.text,
                          nikController.text,
                        ),
                      );

                      Get.snackbar("Berhasil", "Silahkan Login");
                      Get.to(LoginPage());
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
                    Get.to(LoginPage());
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
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
