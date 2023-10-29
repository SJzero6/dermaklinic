import 'package:dermaklinic/screens/home.dart';
import 'package:dermaklinic/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _is_hidden = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
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
                                textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            )),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 20, top: 35),
                          child: Text(
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
                          padding: EdgeInsets.only(left: 20, top: 10),
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
                margin: EdgeInsets.only(top: 40, left: 30, right: 30),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Login',
                          style: GoogleFonts.akatab(
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 18, 98, 163),
                                  fontWeight: FontWeight.bold),
                              fontSize: 20),
                        )),
                    Container(
                      child: TextField(
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 18, 98, 163))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 18, 98, 163))),
                          hintText: "Email Address",
                          hintStyle: TextStyle(color: Colors.black26),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: TextField(
                        obscureText: _is_hidden,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black26),
                          hintText: "Password",
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _is_hidden = !_is_hidden;
                              });
                            },
                            icon: Icon(
                              _is_hidden
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 25,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 18, 98, 163))),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 18, 98, 163)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 43,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                          top: 30,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          },
                          child: Text("Login"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 42, 89, 177),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Forgot my password',
                          style: GoogleFonts.akatab(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 160, 160, 160),
                              ),
                              fontWeight: FontWeight.bold),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Text(
                              'No Account?',
                              style: GoogleFonts.akatab(
                                  textStyle: TextStyle(color: Colors.black),
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(255, 18, 98, 163)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Register()));
                                },
                                child: Text(
                                  "Register Here",
                                  style: GoogleFonts.akatab(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ))
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                height: 180,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 20,
                ),
                child: Transform.rotate(
                  angle: -40 * 3.1415926535 / 180,
                  child: Image.asset(
                    "assets/DermLogo.png",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
