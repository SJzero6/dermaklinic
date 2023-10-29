// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dermaklinic/constants/color.dart';
import 'package:dermaklinic/doctors/doctors.dart';
import 'package:dermaklinic/patient/labReport.dart';
import 'package:dermaklinic/patient/patientrecord.dart';
import 'package:dermaklinic/screens/navbaritems/appoinment/appoinments.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
      backgroundColor: Colors.white,
      body: Column(
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
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Hello,",
                        style: TextStyle(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                        ),
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
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: const Text(
                        "Welcome to the world of possibilities by Dermaklinic!",
                        style: TextStyle(
                          color: selectionColor,
                          fontSize: 13.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 14),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _cardmenu(
                    title: 'Doctors',
                    asset: 'assets/user.png',
                    color: Colors.cyan,
                    fontcolor: Colors.white,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Doctors(),
                        ),
                      );
                    },
                  ),
                  _cardmenu(
                    title: 'Appointment',
                    asset: 'assets/calendar.png',
                    color: Colors.amber,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Appoinment(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _cardmenu(
                    title: 'Records',
                    asset: 'assets/writing.png',
                    color: Color.fromARGB(255, 255, 155, 188),
                    fontcolor: Colors.white,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PatientRecord(),
                          ));
                    },
                  ),
                  _cardmenu(
                    title: 'Lab reports',
                    asset: 'assets/comment.png',
                    color: Color.fromARGB(255, 109, 192, 192),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LabReport(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          TabBar(
            indicatorColor: selectionColor,
            controller: _tabController,
            tabs: [
              Tab(
                child: Text(
                  "Surgery",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: naviblue),
                ),
              ),
              Tab(
                child: Text(
                  "Dermatology",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: naviblue),
                ),
              ),
              Tab(
                child: Text(
                  "Laser",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: naviblue),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Content for Tab 1
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 1.6,
                    enlargeCenterPage: true,
                  ),
                  items: [
                    Container(
                      width: MediaQuery.of(context).size.width * 5,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 160,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 6, 37, 63),
                                ),
                                child: Icon(
                                  Icons.person_3,
                                  size: 150,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                child: Text(
                                  "Nerriz Barbasa Lopez",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 6, 37, 63),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Senior Nurse",
                                  style: TextStyle(
                                    color: Colors.black26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Add more items for your carousel
                  ],
                ),
                // Content for Tab 2
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 1.6,
                    enlargeCenterPage: true,
                  ),
                  items: [
                    Container(
                      width: MediaQuery.of(context).size.width * 5,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 160,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 6, 37, 63),
                                ),
                                child: Icon(
                                  Icons.person_3,
                                  size: 150,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                child: Text(
                                  "Nerriz Barbasa Lopez",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 6, 37, 63),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Senior Nurse",
                                  style: TextStyle(
                                    color: Colors.black26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Add more items for your carousel
                  ],
                ),

                // Content for Tab 3
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 1.6,
                    enlargeCenterPage: true,
                  ),
                  items: [
                    Container(
                      width: MediaQuery.of(context).size.width * 5,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 160,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 6, 37, 63),
                                ),
                                child: Icon(
                                  Icons.person_3,
                                  size: 150,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                child: Text(
                                  "Nerriz Barbasa Lopez",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 6, 37, 63),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Senior Nurse",
                                  style: TextStyle(
                                    color: Colors.black26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Add more items for your carousel
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardmenu({
    required String title,
    required asset,
    required onTap,
    Color color = Colors.white,
    Color fontcolor = Colors.white,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 55,
              child: Image.asset(
                asset,
                color: Colors.white,
                scale: 10,
              ),
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: fontcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
