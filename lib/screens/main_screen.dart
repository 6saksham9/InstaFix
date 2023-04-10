import 'package:flutter/material.dart';
import 'package:laundry_app/screens/history_screen.dart';
import 'package:laundry_app/screens/home_screen.dart';
import 'package:laundry_app/screens/laundry_plus_screen.dart';
import 'package:laundry_app/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentindex = 0;
  final List screens = [
    HomeScreen(),
    LaundryScreen(),
    ProfileScreen(),
    HistoryScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: screens[currentindex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xff0083FF),
          unselectedItemColor: Color(0xffADADAF),
          currentIndex: currentindex,
          onTap: (val) {
            currentindex = val;
            setState(() {});
          },
          elevation: 0,
          backgroundColor: Colors.grey.shade100,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
                label: "",
                backgroundColor: Colors.grey.shade100),
            BottomNavigationBarItem(
                icon: Icon(Icons.add, size: 35),
                label: "",
                backgroundColor: Colors.grey.shade100),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline, size: 35),
                label: "",
                backgroundColor: Colors.grey.shade100),
            BottomNavigationBarItem(
                icon: Icon(Icons.history, size: 35),
                label: "",
                backgroundColor: Colors.grey.shade100),
          ],
        ),
      ),
    );
  }
}
