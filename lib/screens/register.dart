import 'package:dermaklinic/screens/login.dart';
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 6, 37, 63),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 20, top: 30),
                        child: Text(
                          "derma",
                          style: GoogleFonts.aboreto(
                              textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          )),
                        ),
                      ),
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
                                color: Color.fromARGB(255, 18, 98, 163),
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
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 18, 98, 163))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 18, 98, 163)))),
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
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 18, 98, 163))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 18, 98, 163)))),
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
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 18, 98, 163))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 18, 98, 163)))),
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
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 18, 98, 163))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 18, 98, 163)))),
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
                            backgroundColor:
                                const Color.fromARGB(255, 6, 37, 63),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 42, 89, 177),
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