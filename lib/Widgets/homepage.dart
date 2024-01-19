import '/widgets/components/my_drawer.dart';
import '/models/user_interface.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserInterface>(
      builder: (context, ui, child) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Tổng quan"),
              backgroundColor: ui.appBarColor,
              foregroundColor: Colors.white,
            ),

            drawer: MyDrawer(),
            // bottomNavigationBar: MyBottomNavBar(),

            body: Container(
            color: ui.backGroundHomePage, 
            // color: Color()
            // color: Color(0xFF0072BC),
            child: Center(
              child: Text(
                "Nội dung trang tổng quan",
                style: TextStyle(
                  fontSize: ui.fontSize,
                  // backgroundColor: Colors.transparent, // Để tránh màu nền gây ảnh hưởng đến văn bản
                  color: ui.textColor, 
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
