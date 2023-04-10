import 'package:flutter/material.dart';
import 'package:laundry_app/screens/signin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;
    return Scaffold(
      backgroundColor: Color(0xff0076FF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screen_width_ratio * 53),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screen_height_ratio * 59,
              ),
              Row(
                children: [
                  Container(
                    width: screen_width_ratio * 65,
                    height: screen_height_ratio * 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(65 * screen_height_ratio),
                    ),
                    child: Image.asset(
                      'assets/image1.png',
                    ),
                  ),
                  SizedBox(
                    width: 9 * screen_width_ratio,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Laundry',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screen_width_ratio * 26,
                            height: screen_width_ratio),
                      ),
                      Text(
                        'Master',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screen_width_ratio * 26,
                            height: screen_width_ratio),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: screen_height_ratio * 36,
              ),
              RichText(
                  text: TextSpan(
                      text: 'Laundry for\nEveryone',
                      style: TextStyle(
                          height: 1.2 * screen_height_ratio,
                          fontSize: (screen_width_ratio * 45),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins'))),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'by',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screen_width_ratio * 22,
                        fontFamily: 'Poppins')),
                TextSpan(
                  text: ' Devstroop',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: screen_width_ratio * 22,
                      fontFamily: 'Poppins'),
                )
              ])),
              SizedBox(
                height: screen_width_ratio * 72,
              ),
              Image.asset('assets/Lottie.png'),
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
                  builder: (context) => signin(),
                ));
          },
          child: Text(
            'Get Started',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: screen_width_ratio * 20,
              fontWeight: FontWeight.w700,
              color: Color(0xff0076FF),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30 * screen_width_ratio),
          ),
          color: Colors.white,
          minWidth: MediaQuery.of(context).size.width,
          height: screen_height_ratio * 70,
        ),
      ),
    );
  }
}
