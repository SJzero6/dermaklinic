import 'package:dermaklinic/constants/color.dart';
import 'package:dermaklinic/navBar.dart';
// import 'package:dermaklinic/screens/navbaritems/home.dart';
import 'package:dermaklinic/screens/credentials/register.dart';
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
                  decoration: BoxDecoration(
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
                                color: tabBarColor,
                                fontWeight: FontWeight.bold),
                            fontSize: 20),
                      )),
                  Container(
                    child: TextField(
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: tabBarColor)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: tabBarColor)),
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
                            color: tabBarColor,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: tabBarColor)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: tabBarColor),
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
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NavBarScreen()));
                        },
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: tabBarColor,
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
                                  foregroundColor: componentColor),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Register()));
                              },
                              child: Text(
                                "Register Here",
                                style: GoogleFonts.akatab(
                                    textStyle:
                                        TextStyle(fontWeight: FontWeight.bold)),
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
    );
  }
}
