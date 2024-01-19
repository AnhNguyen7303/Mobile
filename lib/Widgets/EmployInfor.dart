import 'package:flutter/material.dart';

class EmployInfor extends StatefulWidget {
  const EmployInfor({super.key});

  @override
  State<EmployInfor> createState() => _EmployInforState();
}

class _EmployInforState extends State<EmployInfor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color.fromARGB(255, 4, 53, 60),
        title: Text("Employee Information" ),
        titleTextStyle: TextStyle(fontSize: 20, ),
      ),

      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, bottom:15 ),
                  alignment: Alignment.center,
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black12,
                    image: DecorationImage(
                      image: AssetImage("assets/images/nhanvien.png"),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 145, 184, 213)
                  ),
                  onPressed: ()=>{

                  }, 
                  child: Text("Edit", style: TextStyle(fontSize: 15),),
                ),
                Container(
                  height: 0.5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}