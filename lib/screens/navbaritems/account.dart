// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:dermaklinic/constants/color.dart';
import 'package:dermaklinic/accountelements/ViewProfie.dart';
import 'package:dermaklinic/accountelements/privacy.dart';
import 'package:dermaklinic/accountelements/settings.dart';
import 'package:dermaklinic/patient/labReport.dart';
import 'package:dermaklinic/patient/patientrecord.dart';
import 'package:dermaklinic/screens/credentials/login.dart';
import 'package:dermaklinic/screens/navbaritems/appoinment/appoinments.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "dermaKlinic",
                style: GoogleFonts.abhayaLibre(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  "https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg",
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
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
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: const Text(
                        "Alan Nayal >",
                        style: TextStyle(
                            letterSpacing: 2,
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Appoinment()));
                              },
                              child: CircleAvatar(
                                radius: 28,
                                backgroundColor: componentColor,
                                child: Icon(
                                  Icons.calendar_month,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Appointments",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Container(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PatientRecord(),
                                    ),
                                  );
                                },
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: componentColor,
                                  child: Image.asset(
                                    "assets/writing.png",
                                    scale: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Patient Record",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LabReport(),
                              ),
                            );
                          },
                          child: Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 28,
                                  backgroundColor: componentColor,
                                  child: Image.asset(
                                    "assets/comment.png",
                                    scale: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Lab Report",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: componentColor,
                                  child: Icon(
                                    Icons.payment,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Transaction",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              margin: EdgeInsets.only(left: 50, top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewProfile(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "View Profile",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Settings(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Settings",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PrivacyPolicy(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Cancellation & refund Policy",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Terms & Conditions",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "About Us",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Logout",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
