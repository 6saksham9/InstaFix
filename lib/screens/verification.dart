import 'package:flutter/material.dart';
import 'package:laundry_app/screens/main_screen.dart';

class VerficationScreen extends StatefulWidget {
  final String phonenumber;
  VerficationScreen({Key? key, required this.phonenumber}) : super(key: key);

  @override
  State<VerficationScreen> createState() => _VerficationScreenState();
}

class _VerficationScreenState extends State<VerficationScreen> {
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              screen_width_ratio * 37, screen_height_ratio * 140, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Verfication",
                  style: TextStyle(
                    fontSize: screen_width_ratio * 24,
                  ),
                ),
                Text(
                    "Please enter the Verfication passcode sent to +91 ${widget.phonenumber} Change phone?"),
                SizedBox(
                  height: screen_height_ratio * 53,
                ),
                TextField(
                  cursorColor: Colors.black,
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                      labelText: "One time passcode",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screen_width_ratio * 56,
              vertical: screen_height_ratio * 20),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainScreen(),
                  ));
            },
            child: Text(
              'Verify',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Color(0xff0076FF),
            minWidth: MediaQuery.of(context).size.width,
            height: screen_height_ratio * 70,
          ),
        ),
      ),
    );
  }
}
