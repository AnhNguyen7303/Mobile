import 'package:flutter/material.dart';

class Department extends StatelessWidget {
  const Department({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: Text("Department"),
        titleTextStyle: TextStyle(color: Colors.white ,fontSize: 20),
        backgroundColor: Color.fromARGB(255, 47, 117, 163),
      ),
    );
  }
}