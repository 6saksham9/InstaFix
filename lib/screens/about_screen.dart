import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screen_width_ratio * 50, top: screen_width_ratio * 50),
              child: Row(
                children: [
                  InkWell(
                    child: Icon(Icons.arrow_back_ios_new_rounded),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: screen_width_ratio * 91,
                  ),
                  Text(
                    'About Us',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: screen_width_ratio * 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
