import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/screens/main_screen.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int payment = 0;
  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;

    return Center(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Padding(
          padding: EdgeInsets.only(
            left: screen_width_ratio * 50,
            top: screen_height_ratio * 66,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    child: Icon(Icons.arrow_back_ios_new_rounded),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));
                    },
                  ),
                  SizedBox(
                    width: screen_width_ratio * 91,
                  ),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    'Profile',
                    style: TextStyle(
                      fontSize: screen_width_ratio * 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: screen_height_ratio * 40),
                child: AutoSizeText(
                  'Information',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: screen_width_ratio * 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screen_height_ratio * 30),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(screen_width_ratio * 20),
                      color: Colors.white),
                  width: screen_width_ratio * 315,
                  height: screen_height_ratio * 133,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          screen_width_ratio * 19,
                          screen_height_ratio * 24,
                          screen_width_ratio * 19,
                          screen_height_ratio * 56,
                        ),
                        child: Image.asset('assets/image 4.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: screen_height_ratio * 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'Akash Shah',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: screen_width_ratio * 18),
                            ),
                            AutoSizeText('+91110110108'),
                            AutoSizeText('New Delhi,India'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: screen_height_ratio * 48,
                    bottom: screen_height_ratio * 20),
                child: AutoSizeText(
                  'Payment method',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                height: screen_height_ratio * 158,
                width: screen_width_ratio * 315,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Radio(
                            value: 1,
                            groupValue: payment,
                            onChanged: (value) {
                              setState(() {
                                payment = 1;
                              });
                            },
                          ),
                          Image.asset('assets/COD.png'),
                        ],
                      ),
                      title: Text('Pay on delivery'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screen_width_ratio * 51),
                      child: Divider(),
                    ),
                    ListTile(
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Radio(
                            value: 2,
                            groupValue: payment,
                            onChanged: (value) {
                              setState(() {
                                payment = 2;
                              });
                            },
                          ),
                          Image.asset('assets/razorpay 1.png'),
                        ],
                      ),
                      title: Text('Razorpay'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screen_height_ratio * 60),
                child: Container(
                  height: screen_height_ratio * 70,
                  width: screen_width_ratio * 314,
                  child: Center(
                    child: AutoSizeText(
                      'Update',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screen_width_ratio * 17,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff0076FF),
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
