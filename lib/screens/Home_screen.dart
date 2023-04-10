import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/screens/Add_details_screen.dart';
import 'package:laundry_app/screens/cart_screen.dart';
import 'package:laundry_app/screens/drawer_screen.dart';
import 'package:laundry_app/screens/laundry_plus_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(screen_width_ratio * 30,
                screen_height_ratio * 32, screen_width_ratio * 42, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Icon(
                        Icons.menu,
                        size: screen_width_ratio * 35,
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DrawerScreen()),
                      ),
                    ),
                    InkWell(
                      child: Icon(Icons.shopping_cart_outlined,
                          size: screen_width_ratio * 35),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartScreen()),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screen_height_ratio * 25),
                Text(
                  'Welcome',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: screen_width_ratio * 34),
                ),
                Text(
                  'Back',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: screen_width_ratio * 34,
                      color: Color(0xff0076FF)),
                ),
                SizedBox(
                  height: screen_height_ratio * 11,
                ),
                Container(
                  height: screen_height_ratio * 103,
                  width: screen_width_ratio * 354,
                  child: Padding(
                    padding: EdgeInsets.all(screen_width_ratio * 20),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: screen_width_ratio * 20,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Subscribe to '),
                          TextSpan(
                              text: ' Laundry+ ',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LaundryScreen()));
                                },
                              style: TextStyle(color: Color(0xff0083FF))),
                          TextSpan(text: 'to get\n monthly worth of laundry'),
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(screen_width_ratio * 30),
                      color: Colors.white),
                ),
                SizedBox(
                  height: screen_height_ratio * 40,
                ),
                Row(
                  children: [
                    items(context, 'assets/washing_machine.png', 'Wash & Iron'),
                    items(context, 'assets/iron.png', 'Ironing'),
                  ],
                ),
                Row(
                  children: [
                    items(context, 'assets/towel.png', 'Dry cleaning'),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LaundryScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: screen_height_ratio * 15,
                            horizontal: screen_width_ratio * 10),
                        child: Container(
                          height: screen_height_ratio * 150,
                          width: screen_width_ratio * 150,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3939391A),
                                  offset: Offset(0, 30),
                                  blurRadius: screen_width_ratio * 60,
                                  spreadRadius: 0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(
                                  screen_width_ratio * 30),
                              gradient: RadialGradient(colors: [
                                Color(0xff00B0FE),
                                Color(0xff0083FF),
                              ])),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.all(screen_width_ratio * 14),
                                child: Image.asset(
                                  'assets/plus.png',
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Laundry+',
                                style: TextStyle(
                                    fontSize: screen_width_ratio * 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget items(BuildContext context, String img, String name) {
  var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
  var screen_width_ratio = MediaQuery.of(context).size.width / 414;

  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddScreen(),
        ),
      );
    },
    child: Padding(
      padding: EdgeInsets.symmetric(
          vertical: screen_height_ratio * 15,
          horizontal: screen_width_ratio * 10),
      child: Container(
        height: screen_height_ratio * 150,
        width: screen_width_ratio * 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screen_width_ratio * 30),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(img),
            SizedBox(
              height: screen_height_ratio * 14,
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: screen_width_ratio * 18,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    ),
  );
}
