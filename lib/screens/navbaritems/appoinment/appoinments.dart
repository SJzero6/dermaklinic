import 'package:dermaklinic/navBar.dart';
import 'package:dermaklinic/patient/labReport.dart';
import 'package:dermaklinic/patient/patientrecord.dart';
import 'package:dermaklinic/patient/transaction.dart';
import 'package:flutter/material.dart';
import 'package:dermaklinic/constants/color.dart';

class Appoinment extends StatefulWidget {
  const Appoinment({super.key});

  @override
  State<Appoinment> createState() => _AppoinmentState();
}

class _AppoinmentState extends State<Appoinment> {
  final List<String> cardData = List.generate(10, (index) => "Card $index");
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          foregroundColor: naviblue,
          automaticallyImplyLeading: false,
          toolbarHeight: 50,
          backgroundColor: naviblue,
          title: Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 1),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NavBarScreen(),
                        ),
                      );
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
              SizedBox(
                width: 20,
              ),
              Container(
                margin: EdgeInsets.only(top: 1),
                child: Text(
                  "Appointments",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: tabBarColor,
                        child: Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Appointments",
                          style: TextStyle(
                              color: tabBarColor,
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
                                builder: (context) => const PatientRecord(),
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
                                color: componentColor,
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
                                  color: componentColor,
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
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Transaction(),
                              ),
                            );
                          },
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
                              color: componentColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              height: screenHeight * 0.04,
              decoration: BoxDecoration(
                color: tabBarColor,
                borderRadius: BorderRadius.circular(screenHeight * 0.01),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  color: naviblue,
                  borderRadius: BorderRadius.circular(screenHeight * 0.01),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text(
                      "All",
                      style: TextStyle(
                        fontSize: screenHeight * 0.013,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Upcoming",
                      style: TextStyle(
                        fontSize: screenHeight * 0.013,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Past",
                      style: TextStyle(
                        fontSize: screenHeight * 0.013,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                    physics: const BouncingScrollPhysics(
                        decelerationRate: ScrollDecelerationRate.fast),
                    itemCount: cardData.length,
                    itemBuilder: (context, index) {
                      return CardItem(
                          screenWidth, screenHeight, cardData[index]);
                    },
                  ),
                  ListView.builder(
                    physics: const BouncingScrollPhysics(
                        decelerationRate: ScrollDecelerationRate.fast),
                    itemCount: cardData.length,
                    itemBuilder: (context, index) {
                      return CardItem(
                          screenWidth, screenHeight, cardData[index]);
                    },
                  ),
                  ListView.builder(
                    physics: const BouncingScrollPhysics(
                        decelerationRate: ScrollDecelerationRate.fast),
                    itemCount: cardData.length,
                    itemBuilder: (context, index) {
                      return CardItem(
                          screenWidth, screenHeight, cardData[index]);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String cardData;

  const CardItem(this.screenWidth, this.screenHeight, this.cardData,
      {Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(screenHeight * 0.015),
          height: screenHeight * 0.19,
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenHeight * 0.05),
          ),
          child: GestureDetector(
            onTap: () {},
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(screenHeight * 0.025),
              ),
              elevation: 10,
            ),
          ),
        ),
      ],
    );
  }
}
