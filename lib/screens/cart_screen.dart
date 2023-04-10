import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:laundry_app/models/items.dart';
import 'package:laundry_app/screens/delivery_screen.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<ItemsModel> products = [
    ItemsModel(
      name: "T-Shirt",
      qty: 0,
      image: "assets/T-shirt.png",
      price: 300,
    ),
    ItemsModel(
      name: "Shorts",
      qty: 0,
      image: "assets/003-pants.png",
      price: 300,
    ),
    ItemsModel(
      name: "Cardigans",
      qty: 0,
      image: "assets/004-cardigan.png",
      price: 700,
    ),
    ItemsModel(
      name: "Dresses",
      qty: 0,
      image: "assets/005-dress.png",
      price: 300,
    ),
    ItemsModel(
        name: "Home",
        qty: 0,
        image: "assets/006-work-from-home.png",
        price: 1000),
    ItemsModel(
      name: "Others",
      qty: 0,
      image: "assets/007-tie.png",
      price: 300,
    ),
  ];
  void removeitem(int index) {
    setState(() {
      products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 51, top: 76),
                child: Row(
                  children: [
                    InkWell(
                      child: Icon(Icons.arrow_back_ios_new_rounded),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      width: 91,
                    ),
                    AutoSizeText(
                      'Cart',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screen_height_ratio * 52,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/swipe.png'),
                  SizedBox(
                    width: screen_width_ratio * 7,
                  ),
                  Text(
                    'swipe on an item to delete',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: screen_height_ratio * 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screen_width_ratio * 30),
                  color: Colors.grey.shade100,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screen_width_ratio * 30),
                  child: ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: screen_height_ratio * 95,
                          width: screen_width_ratio * 344,
                          child: SlidableAutoCloseBehavior(
                            closeWhenTapped: true,
                            child: Slidable(
                              closeOnScroll: true,
                              endActionPane: ActionPane(
                                  motion: StretchMotion(),
                                  children: [
                                    SlidableAction(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      backgroundColor: Color(0xffDF2C2C),
                                      autoClose: true,
                                      onPressed: (context) => {
                                        removeitem(index),
                                      },
                                      icon: Icons.close_outlined,
                                    )
                                  ]),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      screen_width_ratio * 30),
                                ),
                                child: ListTile(
                                  title: AutoSizeText(
                                    products[index].name,
                                    style: TextStyle(
                                        fontSize: screen_width_ratio * 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  subtitle: AutoSizeText(
                                    '₹ ' + products[index].price.toString(),
                                    style: TextStyle(
                                        fontSize: screen_width_ratio * 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff0083FF)),
                                  ),
                                  leading: Padding(
                                    padding: EdgeInsets.only(
                                        left: screen_width_ratio * 27),
                                    child: Image.asset(
                                      products[index].image,
                                    ),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            if (products[index].qty > 0) {
                                              products[index].qty--;
                                              setState(() {});
                                            }
                                          },
                                          icon: Icon(
                                              Icons.remove_circle_rounded,
                                              color: Color(0xffEEEEEE))),
                                      Text(products[index].qty.toString()),
                                      IconButton(
                                          onPressed: () {
                                            products[index].qty++;
                                            setState(() {});
                                          },
                                          icon: Icon(
                                            Icons.add_circle_rounded,
                                            color: Color(0xffEEEEEE),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
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
                    builder: (context) => DeliveryScreen(),
                  ));
            },
            child: Text(
              'Complete order',
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
