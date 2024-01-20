// // import 'package:flutter/material.dart';
// // import 'package:personnel/Counter/counter.dart';
// // import 'package:personnel/Widgets/EmployInfor.dart';
// // import 'package:personnel/home.dart';
// // import 'package:provider/provider.dart';

// import 'Widgets/Employ.dart';
import 'package:flutter/material.dart';
import 'package:personnel/Widgets/Employ.dart';
import 'package:provider/provider.dart';
import '/models/user_interface.dart';
import '/Widgets/homepage.dart';
import '/Widgets/profile.dart';
import '/Widgets/font_size.dart';
import 'package:personnel/Widgets/EmployInfor.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => UserInterface(),
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => MyHomePage(),
          "/profile": (context) => ProfileScreen(),
          "/employee_imfo": (context) => Employee(),
          "/font_size": (context) => MyFontSize(),
        }
      ),
    );
  }
}