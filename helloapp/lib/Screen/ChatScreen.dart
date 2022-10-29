import 'package:flutter/material.dart';
import 'package:helloapp/Screen/ShopScreen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Container(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                toolbarHeight: 0,
                bottomOpacity: 1,
                backgroundColor: Colors.white,
                bottom: TabBar(
                  tabs: [
                    Tab(
                      child: Text("Tất cả", style: TextStyle(color: Colors.grey, fontSize: 18)),
                    ),
                    Tab(
                      child: Text("Nhóm", style: TextStyle(color: Colors.grey, fontSize: 18)),
                    ),
                  ],
                ),
              ),
              body: Container(
                child: SizedBox(
                  child: TabBarView(
                    children: [Text("123"), Text("234")],
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
            Icons.arrow_back,
            color: Colors.black,
          )),
      title: Row(
        children: [
          Text(
            "HelloJob",
            style: TextStyle(
              color: Colors.black,
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
                  style: TextStyle(color: Colors.black),
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
                  "1000",
                  style: TextStyle(color: Colors.black),
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
