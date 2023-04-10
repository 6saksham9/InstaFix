
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
              left: screen_width_ratio * 41, top: screen_height_ratio * 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                    'Settings',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: screen_height_ratio * 67,
              ),
              Text(
                'Change Password',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: screen_width_ratio * 17,
                ),
              ),
              SizedBox(
                width: screen_width_ratio * 188,
                child: TextField(
                  controller: _textEditingController,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screen_width_ratio * 56,
              vertical: screen_height_ratio * 20),
          child: MaterialButton(
            onPressed: () {},
            child: AutoSizeText(
              'Update',
              style: TextStyle(
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
