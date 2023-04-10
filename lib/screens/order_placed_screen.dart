import 'package:flutter/material.dart';

class OrderplacedScreen extends StatefulWidget {
  OrderplacedScreen({Key? key}) : super(key: key);

  @override
  State<OrderplacedScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<OrderplacedScreen> {
  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;

    return SafeArea(
      child: Scaffold(
        body: Column(
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
                    'Checkout',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: screen_width_ratio * 20),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 56 * screen_width_ratio,
              vertical: 20 * screen_height_ratio),
          child: MaterialButton(
            onPressed: () {},
            child: Text(
              'Complete payment',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20 * screen_width_ratio,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30 * screen_width_ratio)),
            color: Color(0xff0076FF),
            minWidth: MediaQuery.of(context).size.width,
            height: 70 * screen_height_ratio,
          ),
        ),
      ),
    );
  }
}
