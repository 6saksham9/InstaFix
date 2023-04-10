import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/models/items.dart';
import 'package:laundry_app/screens/cart_screen.dart';
import 'package:laundry_app/screens/search_screen.dart';

class AddScreen extends StatefulWidget {
  AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  Map<int, int> forcart = {};
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
  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: screen_height_ratio * 76,
                  left: screen_height_ratio * 51),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new_rounded)),
                  // SizedBox(
                  //   width: screen_width_ratio * 91,
                  // ),
                  Spacer(),
                  Text(
                    'Add Details',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: screen_width_ratio * 20),
                  ),
                  // SizedBox(
                  //   width: screen_width_ratio * 93.75,
                  // ),
                  Spacer(),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchScreen()),
                    ),
                    child: Icon(
                      Icons.search_outlined,
                      size: screen_width_ratio * 30,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(
              height: screen_width_ratio * 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screen_width_ratio * 30),
                color: Colors.grey.shade100,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    screen_width_ratio * 32,
                    screen_height_ratio * 37,
                    screen_width_ratio * 38,
                    screen_height_ratio * 25),
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: screen_height_ratio * 95,
                        width: screen_width_ratio * 344,
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screen_width_ratio * 30),
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
                                        if (products[index].qty > 0)
                                          forcart[index] = products[index].qty;
                                        setState(() {});
                                      }
                                    },
                                    icon: Icon(Icons.remove_circle_rounded,
                                        color: Color(0xffEEEEEE))),
                                Text(products[index].qty.toString()),
                                IconButton(
                                    onPressed: () {
                                      products[index].qty++;
                                      if (products[index].qty > 0)
                                        forcart[index] = products[index].qty;

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
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade100,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screen_height_ratio * 56,
              vertical: screen_width_ratio * 20),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ));
            },
            child: Text(
              'Complete order',
              style: TextStyle(
                fontSize: screen_width_ratio * 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(screen_width_ratio * 30)),
            color: Color(0xff0076FF),
            minWidth: MediaQuery.of(context).size.width,
            height: screen_height_ratio * 70,
          ),
        ),
      ),
    );
  }
}
