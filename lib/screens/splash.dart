import 'package:dermaklinic/screens/credentials/login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _navigatetohome();
    super.initState();
  }

  _navigatetohome() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => LoginPage())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        // scale: 3.0,
        child: Image.asset(
          "assets/DermaKlinic logo_Front Page.png",
        ),
      ),
    );
  }
}
