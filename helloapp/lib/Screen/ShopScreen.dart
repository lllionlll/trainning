import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text("Chào Hùng!", style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(onPressed: () {}, icon: ImageIcon(AssetImage("assets/icons/Search.png"), color: Colors.grey,))
        ],
      ),
    );
  }
}
