import 'package:flutter/material.dart';
import 'package:laundry_app/screens/verification.dart';

class signin extends StatefulWidget {
  signin({Key? key}) : super(key: key);

  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  TextEditingController phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(screen_width_ratio * 128,
                    screen_height_ratio * 84, screen_width_ratio * 143, 0),
                child: Image.asset('assets/image2.png'),
              ),
              SizedBox(height: screen_height_ratio * 12),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Laundry Master",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: screen_width_ratio * 30,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    screen_width_ratio * 34, screen_height_ratio * 56, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sign in',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500)),
                    Text(
                      'Please enter your phone number',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: screen_height_ratio * 36,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: screen_width_ratio * 34),
                      child: TextField(
                        controller: phonecontroller,
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          labelText: "Phone Number",
                          labelStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                          hintText: '+91',
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screen_width_ratio * 56,
              vertical: screen_height_ratio * 20),
          child: MaterialButton(
            onPressed: () {
              if (phonecontroller.text != "" &&
                  phonecontroller.text.length == 10) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerficationScreen(
                        phonenumber: phonecontroller.text,
                      ),
                    ));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Please enter a Valid Phone Number")));
              }
            },
            child: Text(
              'Continue',
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
