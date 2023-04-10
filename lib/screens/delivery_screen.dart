import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/screens/payment_screen.dart';

class DeliveryScreen extends StatefulWidget {
  DeliveryScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  int pickup = 0;
  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Padding(
          padding: EdgeInsets.only(
              left: screen_width_ratio * 51, top: screen_height_ratio * 76),
          child: SingleChildScrollView(
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
                SizedBox(
                  height: screen_height_ratio * 33,
                ),
                AutoSizeText(
                  'Pick Up',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: screen_width_ratio * 34),
                ),
                SizedBox(
                  height: screen_height_ratio * 35,
                ),
                Row(
                  children: [
                    Text(
                      'Address Details',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: screen_width_ratio * 115,
                    ),
                    Text(
                      'Change',
                      style: TextStyle(color: Color(0xff4FCAE8)),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: screen_height_ratio * 14),
                  child: Container(
                    height: screen_height_ratio * 156,
                    width: screen_width_ratio * 315,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(screen_width_ratio * 30),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        screen_height_ratio * 25,
                        screen_width_ratio * 25,
                        screen_width_ratio * 53,
                        screen_height_ratio * 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Akash Shah',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: screen_width_ratio * 17,
                              fontWeight: FontWeight.w500,
                              height: .8,
                            ),
                          ),
                          Divider(
                            thickness: .5,
                            color: Color(0xff000000),
                            height: screen_height_ratio * 10,
                          ),
                          Text(
                            'New Delhi',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: screen_width_ratio * 15,
                                fontWeight: FontWeight.w100,
                                height: screen_height_ratio * 1.6),
                          ),
                          Text(
                            'India',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: screen_width_ratio * 15,
                                fontWeight: FontWeight.w100,
                                height: screen_height_ratio * 1.2),
                          ),
                          Divider(
                            thickness: .5,
                            color: Color(0xff000000),
                            height: screen_height_ratio * 0.6,
                          ),
                          Text(
                            '01169269425',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: screen_width_ratio * 17,
                              fontWeight: FontWeight.w500,
                              height: screen_height_ratio * 1.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screen_height_ratio * 42,
                ),
                Text(
                  'Pickup method',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: screen_width_ratio * 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: screen_height_ratio * 14,
                  ),
                  child: Container(
                    height: screen_height_ratio * 201,
                    width: screen_width_ratio * 315,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: screen_height_ratio * 21.5,
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: pickup,
                                  onChanged: (value) {
                                    setState(() {
                                      pickup = 1;
                                    });
                                  },
                                ),
                              ],
                            ),
                            title: Text('Door Pickup'),
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
                                  groupValue: pickup,
                                  onChanged: (value) {
                                    setState(() {
                                      pickup = 2;
                                    });
                                  },
                                ),
                              ],
                            ),
                            title: Text('Office Drop off'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screen_height_ratio * 70,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Total',
                        style: TextStyle(
                          fontSize: screen_height_ratio * 17,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '₹ 7,700',
                        style: TextStyle(
                          fontSize: screen_height_ratio * 22,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 56 * screen_width_ratio,
              vertical: 20 * screen_height_ratio),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentScreen(),
                  ));
            },
            child: Text(
              'Proceed to payment',
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
