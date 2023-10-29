// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TablePage1 extends StatefulWidget {
  const TablePage1({super.key});

  @override
  State<TablePage1> createState() => _TablePage1State();
}

class _TablePage1State extends State<TablePage1> {
  // Define the number of tabs (in this case, 2)

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromARGB(255, 6, 37, 63),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dermaklinic",
                  style: GoogleFonts.aboreto(
                      textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  )),
                ),
                Image.asset(
                  "assets/DermLogo.png",
                  scale: 25,
                ),
              ],
            ),
            bottom: TabBar(
              indicatorColor: Color.fromARGB(0, 0, 0, 0),
              tabs: [
                Tab(
                  text: "",
                ),
                Tab(
                  text: "",
                ),
                Tab(
                  text: "",
                ),
                Tab(
                  text: "",
                ),
                Tab(
                  text: "",
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Entry_Page(),
            Hair_removal(),
            Body_Protocol(),
            Hair_Protocol(),
            Procedure_table(),
          ]),
        ));
  }
}

class Entry_Page extends StatelessWidget {
  const Entry_Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
                "assets/Butterfly background Image of DermaKlinic.jpg")),
        Container(
          margin: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                            color: Color.fromARGB(255, 6, 37, 63),
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "The DermaKlinic, Inside The Mall 1st floor,",
                        style: TextStyle(fontSize: 15),
                      )),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text("Opposite Burj Al Arab - Jumeirah St-",
                        style: TextStyle(fontSize: 15)),
                  ),
                  Container(
                      alignment: Alignment.bottomLeft,
                      child: Text("Umm Suqeim 3 - Dubai",
                          style: TextStyle(fontSize: 15)))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          child: Text("Phone: +971 (04) 276 - 9626",
                              style: TextStyle(fontSize: 15))),
                      Container(
                          alignment: Alignment.bottomLeft,
                          child: Text("Email: info@dermaKlinic.ae",
                              style: TextStyle(fontSize: 15))),
                      Container(
                          alignment: Alignment.bottomLeft,
                          child: Text("Whatsapp: +97155-449-3127",
                              style: TextStyle(fontSize: 15)))
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Hair_removal extends StatelessWidget {
  Hair_removal({
    super.key,
  });
  final List<String> topics = [
    "",
    "Cutera Genesis",
    "Laser Hair Removal",
    "Aerolase",
    "Cryofacial"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Center(
                    child: Text(
                  "LASER HAIR REMOVEL PROTOCOL",
                  style: GoogleFonts.arima(
                      textStyle: TextStyle(fontSize: 20),
                      fontWeight: FontWeight.w600),
                )),
              ),
              Table(
                border: TableBorder.all(),
                children: List.generate(
                  14,
                  (rowIndex) {
                    return TableRow(
                      children: List.generate(
                        5,
                        (columnIndex) {
                          if (rowIndex == 0 && columnIndex == 0) {
                            // 1x1 empty cell in the top-left corner
                            return TableCell(
                              child: Container(), // Empty container
                            );
                          } else if (columnIndex == 0) {
                            // Label the 13x1 cells with numbers
                            return TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${rowIndex - 1}'), // Subtract 1 to label from 0 to 12
                              ),
                            );
                          } else if (rowIndex == 0) {
                            // Access topics from the list
                            return TableCell(
                              child: Center(
                                child: Text(topics[columnIndex],
                                    style: GoogleFonts.aleo(
                                        textStyle: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold))),
                              ),
                            );
                          } else {
                            // For other cells, create individual cells
                            return TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(''),
                              ),
                            );
                          }
                        },
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Body_Protocol extends StatelessWidget {
  Body_Protocol({
    super.key,
  });
  final List<String> topics = [
    "",
    "PB Serum",
    "Radiese",
    "Sculptra/Aesthfil",
    "Trusculpt"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Center(
                    child: Text(
                  "BODY CONTOURING PROTOCOL",
                  style: GoogleFonts.arima(
                      textStyle: TextStyle(fontSize: 20),
                      fontWeight: FontWeight.w600),
                )),
              ),
              Table(
                border: TableBorder.all(),
                children: List.generate(
                  14,
                  (rowIndex) {
                    return TableRow(
                      children: List.generate(
                        5,
                        (columnIndex) {
                          if (rowIndex == 0 && columnIndex == 0) {
                            // 1x1 empty cell in the top-left corner
                            return TableCell(
                              child: Container(), // Empty container
                            );
                          } else if (columnIndex == 0) {
                            // Label the 13x1 cells with numbers
                            return TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${rowIndex - 1}'), // Subtract 1 to label from 0 to 12
                              ),
                            );
                          } else if (rowIndex == 0) {
                            // Access topics from the list
                            return TableCell(
                              child: Center(
                                child: Text(topics[columnIndex],
                                    style: GoogleFonts.aleo(
                                        textStyle: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold))),
                              ),
                            );
                          } else {
                            // For other cells, create individual cells
                            return TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(''),
                              ),
                            );
                          }
                        },
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Hair_Protocol extends StatelessWidget {
  Hair_Protocol({
    super.key,
  });
  final List<String> topics = [
    "",
    "Permea",
    "Microneedling",
    "Cutera Genesis",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Center(
                    child: Text(
                  "HAIR GROWTH PROTOCOL",
                  style: GoogleFonts.arima(
                      textStyle: TextStyle(fontSize: 20),
                      fontWeight: FontWeight.w600),
                )),
              ),
              Table(
                border: TableBorder.all(),
                children: List.generate(
                  14,
                  (rowIndex) {
                    return TableRow(
                      children: List.generate(
                        4,
                        (columnIndex) {
                          if (rowIndex == 0 && columnIndex == 0) {
                            // 1x1 empty cell in the top-left corner
                            return TableCell(
                              child: Container(), // Empty container
                            );
                          } else if (columnIndex == 0) {
                            // Label the 13x1 cells with numbers
                            return TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${rowIndex - 1}'), // Subtract 1 to label from 0 to 12
                              ),
                            );
                          } else if (rowIndex == 0) {
                            // Access topics from the list
                            return TableCell(
                              child: Center(
                                child: Text(topics[columnIndex],
                                    style: GoogleFonts.aleo(
                                        textStyle: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold))),
                              ),
                            );
                          } else {
                            // For other cells, create individual cells
                            return TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(''),
                              ),
                            );
                          }
                        },
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Procedure_table extends StatelessWidget {
  const Procedure_table({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Center(
                    child: Text(
                  "OTHER PROCEDURES PROTOCOL",
                  style: GoogleFonts.arima(
                      textStyle: TextStyle(fontSize: 22),
                      fontWeight: FontWeight.w600),
                )),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(), // Add borders to the table cells
                  children: List.generate(
                    19,
                    (rowIndex) => TableRow(
                      children: List.generate(
                        4,
                        (columnIndex) {
                          // Generate your cell content here
                          return TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(''),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
