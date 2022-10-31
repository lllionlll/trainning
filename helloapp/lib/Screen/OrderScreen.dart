import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
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
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mai Đình Huy",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              "6 phút trước",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
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
                      size: 20,
                    ),
                    "Báo xấu",
                    false),
                itemaction(
                    size,
                    Icon(
                      Icons.mode_edit_outline_outlined,
                      color: Colors.grey,
                    ),
                    "Đổi tên gợi nhớ",
                    false),
                itemaction(
                    size,
                    Icon(
                      Icons.star_border_sharp,
                      color: Colors.grey,
                    ),
                    "Đánh dấu đối tác",
                    false),
                Container(
                  width: size.width,
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      itemaction(
                          size,
                          Icon(
                            Icons.image_outlined,
                            color: Colors.grey,
                          ),
                          "Đơn hàng đã nhận",
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
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      itemaction(
                          size,
                          Icon(
                            Icons.image_outlined,
                            color: Colors.grey,
                          ),
                          "Đơn hàng đã gửi",
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
                itemaction(
                    size,
                    Icon(
                      Icons.person_add,
                      color: Colors.grey,
                    ),
                    "Tạo nhóm với Mai Đình Huy",
                    true),
                itemaction(
                    size,
                    Icon(
                      Icons.person_add,
                      color: Colors.grey,
                    ),
                    "Thêm Mai Đình Huy vào nhóm",
                    true),
                itemaction(
                    size,
                    Icon(
                      Icons.person_add,
                      color: Colors.grey,
                    ),
                    "Xem nhóm chung (7)",
                    true),
                itemaction(
                    size,
                    Icon(
                      Icons.block,
                      color: Colors.grey,
                    ),
                    "Chặn tin nhắn",
                    false),
                itemaction(
                    size,
                    Icon(
                      Icons.delete_outlined,
                      color: Colors.grey,
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
                                                color: Colors.amber),
                                          ),
                                        ]),
                                  ), 
                                  RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "88%",
                                            style: TextStyle(
                                                color: Colors.black),
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
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    "30 tuổi - Tháng...",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: "Đề xuất: ",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                        children: [
                                          TextSpan(
                                            text: "Hệ..",
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontSize: 12),
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
      margin: EdgeInsets.only(top: 10),
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
                child: Text(title),
              ),
              Container(
                height: 50,
                width: 50,
                alignment: Alignment.centerLeft,
                child: (can
                    ? Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey,
                        size: 18,
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
      margin: EdgeInsets.only(top: 20),
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
                      Container(child: Text("Tìm")),
                      Container(child: Text("tin nhắn"))
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
                      Container(child: Text("Trang")),
                      Container(child: Text("cá nhân"))
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
      margin: EdgeInsets.only(top: 10),
      height: 40,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Mai Đình Huy",
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            "Chuyên XKLĐ Nhật, Hàn, Uy tín, An tâm",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }

  Container avataruser() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 120,
      child: CircleAvatar(
          child: Image.asset(
        "assets/images/avataruser.png",
      )),
    );
  }
}
