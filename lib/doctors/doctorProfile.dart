import 'package:dermaklinic/CustomPaint/customLine.dart';
import 'package:dermaklinic/doctors/doctors.dart';
import 'package:flutter/material.dart';
import 'package:dermaklinic/constants/color.dart';

class Dprofile extends StatefulWidget {
  const Dprofile({Key? key});

  @override
  State<Dprofile> createState() => _DprofileState();
}

class _DprofileState extends State<Dprofile> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: naviblue,
        automaticallyImplyLeading: false,
        toolbarHeight: 50,
        backgroundColor: Colors.grey[300],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 1),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Doctors()));
                  },
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: tabBarColor,
                    child: Center(
                      child: Image.asset(
                        "assets/back-arrow.png",
                        scale: 30,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                "assets/bookmark_4520020.png",
                scale: 12,
                color: tabBarColor,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Image.asset("assets/dr.Kadry(2).png"),
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeight / 2.5),
              height: screenHeight / 2.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Dr. Razan Kadry",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 5, 30, 51),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Specialist Dermatologist",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 42, 89, 177),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20, top: 5),
                          child: Text(
                            "see the review",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                      ],
                    ),
                    StraightLine(),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Patient",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 5, 30, 51),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "15 k",
                                style: TextStyle(
                                  color: Colors.indigo[400],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Experience",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 5, 30, 51),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "15 yr",
                                style: TextStyle(
                                  color: Colors.indigo[400],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Rating",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 5, 30, 51),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "5.0",
                                style: TextStyle(
                                  color: Colors.indigo[400],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple[200],
                            ),
                          ),
                          Text(
                            "is simply dummy text of the printing and typesetting industry."
                            " Lorem Ipsum has been the industry's"
                            " standard dummy text ever ",
                            style: TextStyle(color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
