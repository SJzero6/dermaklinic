// import 'dart:ffi';

import 'package:dermaklinic/screens/navbaritems/account.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({super.key});

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50,
        backgroundColor: Color.fromARGB(255, 5, 30, 51),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 1),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AccountPage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/back-arrow.png",
                      scale: 15,
                      color: Color.fromARGB(255, 42, 89, 177),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  margin: EdgeInsets.only(top: 1),
                  child: Text(
                    "View Profile",
                    style: GoogleFonts.aboreto(
                        textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )),
                  ),
                ),
              ],
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Edit",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 2,
                              color: Color.fromARGB(255, 163, 173, 231))),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.person,
                          size: 80,
                          color: Color.fromARGB(255, 163, 173, 231),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Alan Nayal",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 20,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.green[200],
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text("verified")),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(child: Text("Mobile number")),
                      Container(
                        child: Text("Date Of Birth"),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(child: Text("+971 352 556479")),
                      Container(
                        child: Text("19 oct 1990"),
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email Address"),
                        Text("alannayal@gmail.com"),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gender"),
                        Text("male"),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Visa Status"),
                      Text("Nationality"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Resident"),
                      Text("British"),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
