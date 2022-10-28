import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'Screen/ChatScreen.dart';
import 'Screen/FormScreen.dart';
import 'Screen/MenuScreen.dart';
import 'Screen/OrderScreen.dart';
import 'Screen/ShopScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List<String> txtLabel = [
    "Chợ việc làm",
    "Tin nhắn",
    "Kho đơn hàng",
    "Kho Form",
    "Menu"
  ];
  List<Widget> tabs = [
    ShopScreen(),
    ChatScreen(), 
    OrderScreen(),
    FormScreen(), 
    MenuScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
                icon: Badge(
                  badgeContent: Text(
                    "+9",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                  child: ImageIcon(AssetImage("assets/icons/shop.png")),
                  badgeColor: Colors.red,
                  position: BadgePosition.topEnd(),
                  animationType: BadgeAnimationType.scale,
                ),
                label: txtLabel[0]),
            BottomNavigationBarItem(
                icon: Badge(
                  badgeContent: Text(
                    "+9",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                  child: ImageIcon(AssetImage("assets/icons/message.png")),
                  badgeColor: Colors.red,
                  position: BadgePosition.topEnd(),
                  animationType: BadgeAnimationType.scale,
                ),
                label: txtLabel[1]),
            BottomNavigationBarItem(
                icon: Badge(
                  badgeContent: Text(
                    "+9",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                  child: ImageIcon(AssetImage("assets/icons/order.png")),
                  badgeColor: Colors.red,
                  position: BadgePosition.topEnd(),
                  animationType: BadgeAnimationType.scale,
                ),
                label: txtLabel[2]),
            BottomNavigationBarItem(
                icon: Badge(
                  badgeContent: Text(
                    "+9",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                  child: ImageIcon(AssetImage("assets/icons/form.png")),
                  badgeColor: Colors.red,
                  position: BadgePosition.topEnd(),
                  animationType: BadgeAnimationType.scale,
                ),
                label: txtLabel[3]),
            BottomNavigationBarItem(
                icon: Badge(
                  badgeContent: Text(
                    "+9",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                  child: ImageIcon(AssetImage("assets/icons/menu.png")),
                  badgeColor: Colors.red,
                  position: BadgePosition.topEnd(),
                  animationType: BadgeAnimationType.scale,
                ),
                label: txtLabel[4]),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}
