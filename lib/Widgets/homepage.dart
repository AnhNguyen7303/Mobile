// import '/widgets/components/my_drawer.dart';
// import '/models/user_interface.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//         backgroundColor: Colors.deepPurple,
//         foregroundColor: Colors.white,
//       ),

//       drawer: MyDrawer(),

//       body: Consumer<UserInterface>(
//         builder: (context, ui, child) {
//           return Center(
//             child: Text(
//                 "Homepage",
//                 style: TextStyle(
//                   fontSize: ui.fontSize,
//                 )
//             ),
//           );
//         }
//       )
//     );
//   }
// }


import '/widgets/components/my_drawer.dart';
import '/widgets/components/bottomNavBar.dart';
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
              title: Text("My Homepage"),
              backgroundColor: ui.appBarColor,
              foregroundColor: Colors.white,
            ),

            drawer: MyDrawer(),
            // bottomNavigationBar: MyBottomNavBar(),

            body: Container(
            // color: ui.backGroundHomePage, 
            // color: Color()
            color: Color(0xFF0072BC),
            child: Center(
              child: Text(
                "Home",
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
