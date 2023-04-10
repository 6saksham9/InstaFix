import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screen_height_ratio = (MediaQuery.of(context).size.height) / 896;
    var screen_width_ratio = MediaQuery.of(context).size.width / 414;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: screen_width_ratio * 51,
            top: screen_height_ratio * 76,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    child: Icon(Icons.arrow_back_ios_new_rounded),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: screen_width_ratio * 24),
                  //   child: TextField(
                  //     controller: _textEditingController,
                  //     cursorColor: Colors.black,
                  //     decoration: InputDecoration(
                  //       hintText: 'Searchbox',
                  //       focusedBorder: UnderlineInputBorder(
                  //           borderSide: BorderSide(color: Colors.black)),
                  //     ),
                  //   ),
                  // )
                ],
              ),
              SizedBox(
                height: screen_height_ratio * 200,
              ),
              Image.asset('assets/feather_search.png'),
              AutoSizeText(
                'Item not found',
                style: TextStyle(
                    fontSize: screen_width_ratio * 28,
                    fontWeight: FontWeight.w900),
              ),
              AutoSizeText(
                textAlign: TextAlign.center,
                'Try searching the item with\na different keyword.',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
