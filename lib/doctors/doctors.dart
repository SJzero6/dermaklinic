import 'package:dermaklinic/constants/color.dart';
import 'package:dermaklinic/doctors/doctorProfile.dart';
import 'package:dermaklinic/navBar.dart';
import 'package:flutter/material.dart';

class Doctors extends StatefulWidget {
  const Doctors({Key? key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
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
                  "Doctors & Specialists",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: naviblue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                )),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  height: screenHeight * 0.04,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(screenHeight * 0.01),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: tabBarColor,
                      borderRadius: BorderRadius.circular(screenHeight * 0.01),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black26,
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
                          "Dermatology",
                          style: TextStyle(
                            fontSize: screenHeight * 0.013,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Laser Treatment",
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Dprofile(),
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(screenHeight * 0.025),
              ),
              elevation: 10,
              child: Row(
                children: [],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
//Stack(
//   children: [
//     Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Row(
//           children: [
//             Container(
//               margin: EdgeInsets.only(left: screenHeight * 0.03),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 border: Border.all(
//                   width: screenHeight * 0.005,
//                   color: Color.fromARGB(255, 42, 89, 177),
//                 ),
//               ),
//               child: CircleAvatar(
//                 backgroundColor: Colors.grey[200],
//                 radius: screenHeight * 0.01,
//                 child: Icon(
//                   Icons.person,
//                   size: screenHeight * 0.02,
//                 ),
//               ),
//             ),
//             // SizedBox(
//             //   width: screenHeight * 0.018,
//             // ),
//             Container(
//               // color: Colors.amber,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     width: screenWidth * 0.5,
//                     child: Text(
//                       "DR. Razan Kadry",
//                       style: TextStyle(
//                         fontSize: screenHeight * 0.02,
//                         color: Color.fromARGB(255, 5, 30, 51),
//                         fontWeight: FontWeight.w900,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: screenWidth * 0.5,
//                     child: Text(
//                       "15 years of Experience",
//                       style: TextStyle(
//                         fontSize: screenHeight * 0.013,
//                         color: Colors.black38,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     // alignment: Alignment.topRight,
//                     height: screenHeight * 0.03,
//                     width: screenWidth * 0.4,
//                     decoration: BoxDecoration(
//                       color: Colors.indigo[300],
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     child: Center(
//                       child: Text(
//                         "Specialist Dermatologist",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: screenHeight * 0.013,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: screenWidth * 0.5,
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.star,
//                           color: Colors.amber,
//                           size: screenHeight * 0.025,
//                         ),
//                         Icon(
//                           Icons.star,
//                           color: Colors.amber,
//                           size: screenHeight * 0.025,
//                         ),
//                         Icon(
//                           Icons.star,
//                           color: Colors.amber,
//                           size: screenHeight * 0.025,
//                         ),
//                         Icon(
//                           Icons.star,
//                           color: Colors.amber,
//                           size: screenHeight * 0.025,
//                         ),
//                         Icon(
//                           Icons.star,
//                           color: Colors.amber,
//                           size: screenHeight * 0.025,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 margin:
//                     EdgeInsets.only(left: screenHeight * 0.03),
//                 height: screenHeight * 0.095,
//                 width: screenWidth * 0.17,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     topRight:
//                         Radius.circular(screenHeight * 0.025),
//                   ),
//                   color: Colors.indigo[300],
//                 ),
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Icon(
//                     Icons.calendar_today,
//                     color: Colors.white,
//                     size: screenHeight * 0.07,
//                   ),
//                 ),
//               ),
//               Container(
//                 margin:
//                     EdgeInsets.only(left: screenHeight * 0.03),
//                 height: screenHeight * 0.095,
//                 width: screenWidth * 0.17,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     bottomRight:
//                         Radius.circular(screenHeight * 0.025),
//                   ),
//                   color: Color.fromARGB(255, 5, 30, 51),
//                 ),
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Icon(
//                     Icons.phone,
//                     color: Colors.white,
//                     size: screenHeight * 0.07,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   ],
// )
