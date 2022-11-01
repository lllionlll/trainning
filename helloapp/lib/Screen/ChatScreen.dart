import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:helloapp/Screen/ShopScreen.dart';
import 'package:helloapp/components/item_chat.dart';
import 'package:helloapp/iconsax.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String _fontFamilyMedium = "SF-Pro-Display-Medium";
  String _fontFamilyRegular = "SF-Pro-Display-Regular";
  TextStyle style1 = TextStyle(
      color: Colors.blue, fontSize: 17, fontFamily: "SF-Pro-Display-Medium");
  TextStyle style2 = TextStyle(
      color: Colors.grey, fontSize: 17, fontFamily: "SF-Pro-Display-Regular");
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Container(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
              backgroundColor: Colors.white,
              appBar: PreferredSize(
                preferredSize: Size(double.infinity, 40),

                // elevation: 0,
                // toolbarHeight: 0,
                // bottomOpacity: 1,
                // backgroundColor: Colors.white,
                child: TabBar(
                  onTap: (index) {
                    setState(() {
                      _index = index;
                    });
                  },
                  // indicatorSize: TabBarIndicatorSize.label,
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                  // isScrollable: true,
                  tabs: [
                    Tab(
                      child: Text("Tất cả",
                          style: (_index == 0 ? style1 : style2)),
                    ),
                    Tab(
                      child:
                          Text("Nhóm", style: (_index == 1 ? style1 : style2)),
                    ),
                  ],
                ),
              ),
              body: Container(
                color: Colors.white,
                height: double.infinity,
                child: Container(
                  height: 80,
                  child: TabBarView(
                    children: [
                      ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          ItemChat(),
                          ItemChat(),
                          ItemChat(),
                          ItemChat(),
                          ItemChat(),
                          ItemChat(),
                          ItemChat(),
                          ItemChat(),
                          ItemChat(),
                          ItemChat(),
                          ItemChat(),
                          ItemChat(),
                        ],
                      ),
                      Container(
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.5,
      titleSpacing: 0,
      leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Icon(
            Iconsax.arrow_left,
            color: Colors.black,
          )),
      title: Row(
        children: [
          Text(
            "HelloJob",
            style: TextStyle(
              color: Colors.black,
              fontFamily: _fontFamilyMedium,
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.amber),
              child: Icon(
                Icons.check_rounded,
                size: 16,
              ))
        ],
      ),
      actions: [
        Row(
          children: [
            Icon(
              Icons.diamond,
              color: Colors.cyan,
            ),
            Container(
                width: 40,
                child: Text(
                  "1000",
                  style: TextStyle(
                      color: Colors.black, fontFamily: _fontFamilyRegular),
                ))
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.monetization_on,
              color: Colors.yellow,
            ),
            Container(
                width: 40,
                child: Text(
                  "3000",
                  style: TextStyle(
                      color: Colors.amber, fontFamily: _fontFamilyRegular),
                ))
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage("assets/icons/sliders.png"),
              color: Colors.grey,
            )),
        IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage("assets/icons/Search.png"),
              color: Colors.grey,
            )),
      ],
    );
  }
}
