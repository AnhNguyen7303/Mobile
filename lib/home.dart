import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:personnel/Counter/counter.dart';
import 'package:personnel/Widgets/Department.dart';
import 'package:personnel/Widgets/Employ.dart';
import 'package:provider/provider.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {

    final counter = Provider.of<CounterModel>(context);

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double containerHeight = screenHeight*0.25;
    double containerWidth = screenWidth*0.9;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: Text("Home"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10),
            color: Colors.white,
            iconSize: 30,
            icon: Icon(Icons.settings),
            onPressed: () => {
              print("sang trang setting ne")
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          
          children: [
            Center(
              child: Container(
                height: containerHeight*0.8,
                width: containerWidth,
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(15),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Department()));
                  },
                  child: Container(
                    height: containerHeight,
                    width:  containerWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/nhanvien.png")
                      )
                    ),
                    child: Align(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        alignment: Alignment.bottomLeft,
                        child: Text("Nhan Vien", style: TextStyle(color: Colors.black, fontSize: 20),),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin:EdgeInsets.all(15),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyEmployee()));
                  },
                  child: 
                  Container(
                    height: containerHeight,
                    width: containerWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/phongban.jpg"),
                      )
                    ),
                    child: Align(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.bottomLeft,
                        child: Text("Phong ban", style: TextStyle(color: Color.fromARGB(255, 81, 110, 213), fontSize: 20),),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}