import 'package:dermaklinic/biometric/biometric.dart';
// import 'package:dermaklinic/navBar.dart';
import 'package:dermaklinic/screens/navbaritems/account.dart';
// import 'package:dermaklinic/screens/navbaritems/account.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    //final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: screenHeight * 0.08,
        backgroundColor: Color.fromARGB(255, 5, 30, 51),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 25),
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
                  scale: screenHeight * 0.02,
                  color: Color.fromARGB(255, 42, 89, 177),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                "Privacy policy",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight * 0.02,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 15, top: 20, right: 20),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Change Password",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          BiometricLockSwitch()
        ],
      ),
    );
  }
}
