import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: 210,
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
                    padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "dermaKlinic",
                          style: GoogleFonts.aboreto(
                              textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          )),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Hello,",
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
                      "Alan Nayal",
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
                      "Welcome to the world of possibilities by Dermaklinic!",
                      style: TextStyle(
                        // letterSpacing: 2,
                        color: Color.fromARGB(255, 41, 149, 192),
                        fontSize: 13.5,
                        //
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          Container(
            // margin: EdgeInsets.only(left: 10, right: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _cardmenu(
                      title: 'Doctors',
                      asset: 'assets/user.png',
                      color: Colors.cyan,
                      fontcolor: Colors.white),
                  _cardmenu(
                      title: 'Appointment',
                      asset: 'assets/calendar.png',
                      color: Colors.amber),
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            // margin: EdgeInsets.only(left: 10, right: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _cardmenu(
                      title: 'Records',
                      asset: 'assets/writing.png',
                      color: Color.fromARGB(255, 255, 155, 188),
                      fontcolor: Colors.white),
                  _cardmenu(
                      title: 'Lab reports',
                      asset: 'assets/comment.png',
                      color: Color.fromARGB(255, 109, 192, 192)),
                ]),
          ),
        ],
      ),
    ));
  }

  Widget _cardmenu(
      {required String title,
      required asset,
      Color color = Colors.white,
      Color fontcolor = Colors.white}) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 36),
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), color: color),
        child: Row(children: [
          Container(
            height: 20,
            width: 60,
            child: Image.asset(
              asset,
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: fontcolor,
            ),
          )
        ]),
      ),
    );
  }
}
