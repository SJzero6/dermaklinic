import 'package:dermaklinic/Calenders/weekmonth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentBooking extends StatefulWidget {
  const AppointmentBooking({super.key});

  @override
  State<AppointmentBooking> createState() => _AppointmentBookingState();
}

class _AppointmentBookingState extends State<AppointmentBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: Color.fromARGB(255, 5, 30, 51),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: GestureDetector(
                onTap: () {
                  print("hello world");
                },
                child: Image.asset(
                  "assets/left-arrow_5689514.png",
                  scale: 12,
                  color: Color.fromARGB(255, 42, 89, 177),
                ),
              ),
            ),
            Text(
              "Book Appointment for \n        Dr.Razan Kadry",
              style: GoogleFonts.aboreto(
                  textStyle: TextStyle(
                color: Colors.white,
                fontSize: 15,
              )),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CalendarView(),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: Colors.pink[200],
                        ),
                        Text(
                          "Fully Booked",
                          style: TextStyle(color: Colors.pink[200]),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: Colors.pink[200],
                        ),
                        Text(
                          "Available",
                          style: TextStyle(color: Colors.pink[200]),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: Colors.red,
                        ),
                        Text(
                          "Off Day",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 170,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 20, top: 80),
              child: Transform.rotate(
                angle: -40 * 3.1415926535 / 180,
                child: Image.asset(
                  "assets/DermLogo.png",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
