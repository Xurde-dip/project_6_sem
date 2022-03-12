// ignore_for_file: non_constant_identifier_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dipak_sup_app/screens/navbar/about.dart';
import 'package:dipak_sup_app/screens/navbar/addemp.dart';
import 'package:dipak_sup_app/screens/navbar/attendence.dart';
import 'package:dipak_sup_app/screens/navbar/homepage.dart';
import 'package:dipak_sup_app/screens/navbar/salary.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

GlobalKey<CurvedNavigationBarState> _NavKey = GlobalKey();
var pagesAll = [
  const AddEmployee(),
  const Attendance(),
  const HomePage(),
  const Salary(),
  const About()
];
var myindex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        key: _NavKey,
        items: const [
          Icon(Icons.person_add, size: 30),
          Icon(Icons.assignment, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.currency_rupee, size: 30),
          Icon(Icons.person, size: 30),
        ],
        buttonBackgroundColor: const Color.fromARGB(255, 223, 214, 214),
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 400),
        color: const Color.fromARGB(255, 4, 172, 223),
      ),
      body: pagesAll[myindex],
    );
  }
}
