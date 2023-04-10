import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/screens/order_placed_screen.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<PaymentScreen> {
  int payment = 0;
  int pickup = 0;
  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
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
                  'Payment',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: screen_width_ratio * 34),
                ),
                SizedBox(
                  height: screen_height_ratio * 18,
                ),
                Text(
                  'Payment method',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: screen_width_ratio * 17,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: screen_height_ratio * 12,
                  ),
                  child: Container(
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
                ),
                SizedBox(
                  height: screen_height_ratio * 29,
                ),
                Text(
                  'Delivery method',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                    fontSize: screen_width_ratio * 17,
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
                  height: screen_height_ratio * 60,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Total',
                        style: TextStyle(
                          fontFamily: 'Poppins',
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
                    builder: (context) => OrderplacedScreen(),
                  ));
            },
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
