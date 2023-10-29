import 'package:dermaklinic/constants/color.dart';
import 'package:dermaklinic/screens/booklet/FirstPage.dart';
import 'package:dermaklinic/screens/navbaritems/account.dart';
import 'package:dermaklinic/screens/navbaritems/appoinment/appoinments.dart';
import 'package:dermaklinic/doctors/doctors.dart';
import 'package:dermaklinic/screens/navbaritems/home.dart';
import 'package:flutter/material.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomePageContent(),
    Appoinment(),
    Doctors(),
    TablePage1(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home', backgroundColor: naviblue),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: 'Appointments',
              backgroundColor: naviblue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Doctors',
              backgroundColor: naviblue),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Booklet',
              backgroundColor: naviblue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
              backgroundColor: naviblue),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
