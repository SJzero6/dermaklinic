import 'package:dermaklinic/constants/color.dart';
import 'package:dermaklinic/screens/credentials/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: naviblue,
        automaticallyImplyLeading: false,
        toolbarHeight: 50,
        backgroundColor: naviblue,
        title: Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(left: 5, right: 10),
          child: Text(
            "dermaKlinic",
            style: GoogleFonts.abhayaLibre(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: naviblue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 20, top: 35),
                        child: const Text(
                          "Welcome to,",
                          style: TextStyle(
                              letterSpacing: 2,
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: const Text(
                          "DermaKlinic  Dubai",
                          style: TextStyle(
                              letterSpacing: 2,
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w900),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Register Today',
                        style: GoogleFonts.akatab(
                            textStyle: const TextStyle(
                                color: tabBarColor,
                                fontWeight: FontWeight.bold),
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: const TextField(
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          hintText: "Your Name",
                          hintStyle: TextStyle(color: Colors.black26),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: tabBarColor)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: tabBarColor))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: const TextField(
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black26),
                          hintText: "Address",
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: tabBarColor)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: tabBarColor))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: const TextField(
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          hintText: "Phone Number",
                          hintStyle: TextStyle(color: Colors.black26),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: tabBarColor)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: tabBarColor))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: const TextField(
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          hintText: "EmailAddress",
                          hintStyle: TextStyle(color: Colors.black26),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: tabBarColor)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: tabBarColor))),
                    ),
                  ),
                  SizedBox(),
                  Container(
                      height: 43,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                        top: 30,
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Create An Account"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: naviblue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      )),
                  Container(
                      margin: const EdgeInsets.only(top: 15, left: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Already have an Account Login below',
                        style: GoogleFonts.akatab(
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 160, 160, 160),
                            ),
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                      height: 43,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                        top: 15,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: componentColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





// Container(
            //   padding: EdgeInsets.only(right: 70, top: 10),
            //   alignment: Alignment.bottomRight,
            //   child: Transform.rotate(
            //     angle: -45 * 3.1415926535 / 180,
            //     child: Transform.scale(
            //       scale: 3.0,
            //       child: Image.asset(
            //         "assets/logo.png",
            //       ),
            //     ),
            //   ),
            // )



            // Container(
                  //     margin: EdgeInsets.only(top: 10),
                  //     alignment: Alignment.topLeft,
                  //     child: Row(
                  //       children: [
                  //         Text(
                  //           'No Account?',
                  //           style: GoogleFonts.akatab(
                  //               textStyle: TextStyle(color: Colors.black),
                  //               fontWeight: FontWeight.bold),
                  //         ),
                  //         TextButton(
                  //             style: TextButton.styleFrom(
                  //                 foregroundColor:
                  //                     Color.fromARGB(255, 18, 98, 163)),
                  //             onPressed: () {},
                  //             child: Text(
                  //               "Register Here",
                  //               style: GoogleFonts.akatab(
                  //                   textStyle:
                  //                       TextStyle(fontWeight: FontWeight.bold)),
                  //             ))
                  //       ],
                  //     )),