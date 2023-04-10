import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/screens/Add_details_screen.dart';

class LaundriesScreen extends StatefulWidget {
  LaundriesScreen({Key? key}) : super(key: key);

  @override
  State<LaundriesScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<LaundriesScreen> {
  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screen_width_ratio * 50, top: screen_height_ratio * 50),
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
                    'Laundries',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: screen_width_ratio * 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screen_height_ratio * 200,
            ),
            Image.asset('assets/laundry-basket 1.png'),
            AutoSizeText(
              'No Laundries yet',
              style: TextStyle(
                  fontSize: screen_width_ratio * 28,
                  fontWeight: FontWeight.w900),
            ),
            AutoSizeText(
                'Hit the button down below \nto start your laundry order'),
          ],
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
                    builder: (context) => AddScreen(),
                  ));
            },
            child: AutoSizeText(
              'Start laundry',
              style: TextStyle(
                fontSize: screen_width_ratio * 20,
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
