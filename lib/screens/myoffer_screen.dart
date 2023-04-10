import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MyofferScreen extends StatelessWidget {
  const MyofferScreen({Key? key}) : super(key: key);

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
                    width: screen_height_ratio * 91,
                  ),
                  Text(
                    'My offers',
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
            Image.asset('assets/sorry 1.png'),
            AutoSizeText(
              'ohh snap!  No offers yet',
              style: TextStyle(
                  fontSize: screen_width_ratio * 28,
                  fontWeight: FontWeight.w900),
            ),
            AutoSizeText(
                'Areous dose’t have any offers \nat this timeplease check again.'),
          ],
        ),
      ),
    );
  }
}
