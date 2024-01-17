import 'package:flutter/material.dart';
import 'package:personnel/Counter/counter.dart';
import 'package:personnel/Widgets/EmployInfor.dart';
import 'package:personnel/home.dart';
import 'package:provider/provider.dart';

import 'Widgets/Employ.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: MaterialApp(
        home: EmployInfor(),
      ),
    );
  }
}
