import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ItemChat extends StatefulWidget {
  const ItemChat({super.key});

  @override
  State<ItemChat> createState() => _ItemChatState();
}

class _ItemChatState extends State<ItemChat> {
  String _fontFamilyMedium = "SF-Pro-Display-Medium";
  String _fontFamilyRegular = "SF-Pro-Display-Regular";
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Positioned(
          child: Container(
            padding: EdgeInsets.all(15),
            width: 80,
            height: 80,
            child: CircleAvatar(
              backgroundImage: Image.asset("assets/images/avatar.png").image,
            ),
          ),
        ),
        Positioned(
          left: 80,
          child: Container(
            height: 80,
            width: MediaQuery.of(context).size.width - 80 * 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Thông báo hệ thống",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: _fontFamilyMedium,
                      fontSize: 17),
                ),
                Text(
                  "[Danh sách ứng viên tiềm năng]",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: _fontFamilyRegular,
                      fontSize: 15),
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 80,
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "7 ngày",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: _fontFamilyRegular,
                      fontSize: 13),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Badge(
                    animationType: BadgeAnimationType.slide,
                    badgeContent: Text(
                      "1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontFamily: _fontFamilyRegular),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
