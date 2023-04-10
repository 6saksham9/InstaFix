import 'package:flutter/material.dart';
import 'package:laundry_app/screens/main_screen.dart';

class LaundryScreen extends StatelessWidget {
  const LaundryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screen_width_ratio * 50, top: screen_height_ratio * 50),
              child: Row(
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
                  Text(
                    'Laundry+',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: screen_width_ratio * 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screen_height_ratio * 72,
            ),
            Text(
              'Monthly Laundry Plan',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            SizedBox(
              height: screen_height_ratio * 32,
            ),
            Container(
              //height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(screen_width_ratio * 30),
                    bottom: Radius.zero),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(screen_width_ratio * 32,
                    screen_height_ratio * 67, screen_width_ratio * 38, 0),
                child: Column(
                  children: [
                    launderyItem("assets/001-man.png", "Individual", "₹3,000",
                        "100", context),
                    SizedBox(
                      height: screen_height_ratio * 15,
                    ),
                    launderyItem("assets/003-relationship.png", "Couple",
                        "₹4,000", "100", context),
                    SizedBox(
                      height: screen_height_ratio * 15,
                    ),
                    launderyItem("assets/002-team.png", "Family", "₹5,000",
                        "350", context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget launderyItem(String img, String title, String price, String cloths,
      BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;

    return Container(
      height: screen_height_ratio * 121,
      width: screen_width_ratio * 344,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: EdgeInsets.all(screen_height_ratio * 26),
        child: Row(
          children: [
            Image.asset(img),
            SizedBox(
              width: screen_width_ratio * 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: screen_width_ratio * 20),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: screen_width_ratio * 16,
                          color: Color(0xff0083FF)),
                    ),
                    SizedBox(
                      width: screen_width_ratio * 30,
                    ),
                    Text(
                      cloths + " cloths",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: screen_width_ratio * 16,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
