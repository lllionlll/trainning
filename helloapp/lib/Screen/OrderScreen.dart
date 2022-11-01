import 'package:flutter/material.dart';
import 'package:helloapp/iconsax.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  String _fontFamilyMedium = "SF-Pro-Display-Medium";
  String _fontFamilyRegular = "SF-Pro-Display-Regular";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        elevation: 0.4,
        leading: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(
              Iconsax.arrow_left,
              color: Colors.black,
            )),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mai Đình Huy",
              style: TextStyle(fontSize: 17, color: Colors.black, fontFamily: _fontFamilyMedium, ),
            ),
            Text(
              "6 phút trước",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: _fontFamilyRegular, 
                 ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                avataruser(),
                infouser(),
                action(),
                itemaction(
                    size,
                    Icon(
                      Icons.warning_amber,
                      color: Colors.grey,
                      size: 24,
                    ),
                    "Báo xấu",
                    false),
                itemaction(
                    size,
                    Icon(
                      Icons.mode_edit_outline_outlined,
                      color: Colors.grey,
                      size: 24,
                    ),
                    "Đổi tên gợi nhớ",
                    false),
                itemaction(
                    size,
                    Icon(
                      Icons.star_border_sharp,
                      color: Colors.grey,
                      size: 24,
                    ),
                    "Đánh dấu đối tác",
                    false),
                Container(
                  width: size.width,
                  height: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      itemaction(
                          size,
                          Icon(
                            Icons.image_outlined,
                            color: Colors.grey,
                            size: 24,
                          ),
                          "Form đã nhận",
                          true),
                      Container(
                        width: size.width, 
                        padding: EdgeInsets.only(top: 10),
                        margin: EdgeInsets.only(left: 50),
                        child: Row(  
                          children: [
                            itemform(), 
                            itemform(), 
                            itemform(), 
                            Container(
                              width: 50,
                              child: Icon(Icons.arrow_forward, color: Colors.cyan, size: 24,),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  height: 130,
                  child: Column(  
                    children: [
                       itemaction(
                          size,
                          Icon(
                            Icons.image_outlined,
                            color: Colors.grey,
                            size: 24,
                          ),
                          "Đơn hàng đã gửi",
                          true),
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                width: 70,
                                height: 70, 
                                color: Colors.green,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                width: 70,
                                height: 70, 
                                color: Colors.green,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                width: 70,
                                height: 70, 
                                color: Colors.green,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                width: 70,
                                height: 70, 
                                color: Colors.green,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                width: 70,
                                height: 70, 
                                child: Icon(Icons.arrow_forward, color: Colors.cyan, size: 24,),
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  height: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      itemaction(
                          size,
                          Icon(
                            Icons.image_outlined,
                            color: Colors.grey,
                            size: 24,
                          ),
                          "Form đã gửi",
                          true),
                      Container(
                        width: size.width, 
                        padding: EdgeInsets.only(top: 10),
                        margin: EdgeInsets.only(left: 50),
                        child: Row(  
                          children: [
                            itemform(), 
                            itemform(), 
                            itemform(),
                            Container(
                              width: 50,
                              child: Icon(Icons.arrow_forward, color: Colors.cyan,),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  height: 130,
                  child: Column(  
                    children: [
                       itemaction(
                          size,
                          Icon(
                            Icons.image_outlined,
                            color: Colors.grey,
                            size: 24,
                          ),
                          "Ảnh, file đã trao đổi",
                          true),
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                width: 70,
                                height: 70, 
                                color: Colors.green,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                width: 70,
                                height: 70, 
                                color: Colors.green,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                width: 70,
                                height: 70, 
                                color: Colors.green,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                width: 70,
                                height: 70, 
                                color: Colors.green,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                width: 70,
                                height: 70, 
                                child: Icon(Icons.arrow_forward, color: Colors.cyan, size: 24,),
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                ),
                itemaction(
                    size,
                    Icon(
                      Icons.person_add,
                      color: Colors.grey,
                      size: 24,
                    ),
                    "Tạo nhóm với Mai Đình Huy",
                    true),
                itemaction(
                    size,
                    Icon(
                      Icons.person_add,
                      color: Colors.grey,
                      size: 24,
                    ),
                    "Thêm Mai Đình Huy vào nhóm",
                    true),
                itemaction(
                    size,
                    Icon(
                      Icons.person_add,
                      color: Colors.grey,
                      size: 24,
                    ),
                    "Xem nhóm chung (7)",
                    true),
                itemaction(
                    size,
                    Icon(
                      Icons.block,
                      color: Colors.grey,
                      size: 24,
                    ),
                    "Chặn tin nhắn",
                    false),
                itemaction(
                    size,
                    Icon(
                      Icons.delete_outlined,
                      color: Colors.grey,
                      size: 24,
                    ),
                    "Xóa lịch sử trò chuyện",
                    false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container itemform() {
    return Container(
                        width: 90,
                        margin: EdgeInsets.only(right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      Image.asset("assets/images/avatar.png")
                                          .image,
                                ),
                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "95%",
                                            style: TextStyle(
                                                color: Colors.amber, fontFamily: _fontFamilyRegular, fontSize: 13),
                                          ),
                                        ]),
                                  ), 
                                  RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "88%",
                                            style: TextStyle(
                                                color: Colors.black, fontFamily: _fontFamilyRegular, fontSize: 13),
                                          ),
                                        ]),
                                  )
                                ],
                              ),
                              ],
                            ),
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "(Chưa rõ)",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11, fontFamily: _fontFamilyRegular),
                                  ),
                                  Text(
                                    "30 tuổi - Tháng...",
                                    style: TextStyle(fontSize: 11, fontFamily: _fontFamilyMedium),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: "Đề xuất: ",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 11, fontFamily: _fontFamilyMedium),
                                        children: [
                                          TextSpan(
                                            text: "Hệ..",
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontSize: 11, fontFamily: _fontFamilyMedium),
                                          ),
                                        ]),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
  }

  Container itemaction(Size size, Icon icon, String title, bool can) {
    return Container(
      height: 52,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                child: icon,
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 50,
                width: size.width - (50 * 2),
                child: Text(title, style: TextStyle(fontSize: 17, fontFamily: _fontFamilyRegular),),
              ),
              Container(
                height: 50,
                width: 50,
                alignment: Alignment.centerLeft,
                child: (can
                    ? Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey,
                        size: 17,
                      )
                    : null),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 0.2,
            margin: EdgeInsets.only(left: 50, right: 30),
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Container action() {
    return Container(
      width: 170,
      height: 100,
      margin: EdgeInsets.only(top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageIcon(
                  AssetImage("assets/icons/Search.png"),
                  color: Colors.grey,
                  size: 34,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(child: Text("Tìm", style: TextStyle(fontFamily: _fontFamilyRegular, fontSize: 17),)),
                      Container(child: Text("tin nhắn", style: TextStyle(fontFamily: _fontFamilyRegular, fontSize: 17)))
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageIcon(
                  AssetImage("assets/icons/form.png"),
                  color: Colors.grey,
                  size: 34,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(child: Text("Trang", style: TextStyle(fontFamily: _fontFamilyRegular, fontSize: 17))),
                      Container(child: Text("cá nhân", style: TextStyle(fontFamily: _fontFamilyRegular, fontSize: 17)))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container infouser() {
    return Container(
      height: 40,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Mai Đình Huy",
            style: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.w700),
          ),
          Text(
            "Chuyên XKLĐ Nhật, Hàn, Uy tín, An tâm",
            style: TextStyle(color: Colors.grey, fontSize: 13),
          )
        ],
      ),
    );
  }

  Container avataruser() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      width: 120,
      height: 140,
      child: CircleAvatar(
          child: Image.asset(
        "assets/images/avataruser.png",
      )),
    );
  }
}
