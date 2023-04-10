import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/screens/about_screen.dart';
import 'package:laundry_app/screens/laundries_screen.dart';
import 'package:laundry_app/screens/myoffer_screen.dart';
import 'package:laundry_app/screens/privacy_screen.dart';
import 'package:laundry_app/screens/profile_screen.dart';
import 'package:laundry_app/screens/settings_screen.dart';
import 'package:laundry_app/screens/signin.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0076FF),
        body: Padding(
          padding: EdgeInsets.all(screen_width_ratio * 60),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                        size: 35 * screen_width_ratio,
                      ),
                    ),
                    SizedBox(
                      width: screen_width_ratio * 45,
                    ),
                    AutoSizeText(
                      'Laundry Master',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: screen_width_ratio * 20,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: screen_height_ratio * 50,
                ),
                InkWell(
                  child: rowitems(Icons.person_outline, 'Profile', context),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                  },
                ),
                Divider(
                  thickness: screen_height_ratio * 0.5,
                  color: Colors.white,
                ),
                InkWell(
                  child: rowitems(
                      Icons.shopping_cart_outlined, 'Laundries', context),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LaundriesScreen(),
                      ),
                    );
                  },
                ),
                Divider(
                  thickness: screen_height_ratio * 0.5,
                  color: Colors.white,
                ),
                InkWell(
                  child: rowitems(
                      Icons.local_offer_outlined, 'offer and promo', context),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyofferScreen(),
                      ),
                    );
                  },
                ),
                Divider(
                  thickness: screen_height_ratio * 0.5,
                  color: Colors.white,
                ),
                InkWell(
                  child: rowitems(
                      Icons.report_problem_outlined, 'Privacy policy', context),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrivacyScreen(),
                      ),
                    );
                  },
                ),
                Divider(
                  thickness: screen_height_ratio * 0.5,
                  color: Colors.white,
                ),
                InkWell(
                  child: rowitems(Icons.settings_outlined, 'Settings', context),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingScreen(),
                      ),
                    );
                  },
                ),
                Divider(
                  thickness: screen_height_ratio * 0.5,
                  color: Colors.white,
                ),
                InkWell(
                  child:
                      rowitems(Icons.sticky_note_2_outlined, 'About', context),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutScreen(),
                      ),
                    );
                  },
                ),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => signin(),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: screen_height_ratio * 15),
                    child: Row(
                      children: [
                        AutoSizeText(
                          'Signout',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize:screen_width_ratio* 25,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.all(screen_height_ratio * 20),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget rowitems(IconData iconData, String name, BuildContext context) {
  var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
  var screen_width_ratio = (MediaQuery.of(context).size.height) / 896;

  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(
            top: screen_height_ratio * 15, bottom: screen_height_ratio * 15),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: screen_width_ratio * 19.0),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            AutoSizeText(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25 * screen_width_ratio,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    ],
  );
}
