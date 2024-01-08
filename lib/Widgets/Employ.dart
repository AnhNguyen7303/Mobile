import 'package:flutter/material.dart';

class MyEmployee extends StatefulWidget {
  const MyEmployee({super.key});

  @override
  State<MyEmployee> createState() => _MyEmployeeState();
}

class _MyEmployeeState extends State<MyEmployee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee List"),
        titleTextStyle: TextStyle(color:  Colors.white, fontSize: 20),
        backgroundColor: Color.fromARGB(255, 47, 117, 163),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          
        ),
      ),
    );
  }
}