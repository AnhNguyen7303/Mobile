import '/widgets/components/my_drawer.dart';
import '/models/user_interface.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyFontSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserInterface>(
      builder: (context, ui, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Cài đặt"),
            backgroundColor: ui.appBarColor,
            foregroundColor: Colors.white,
          ),
          drawer: MyDrawer(),
          body: Container(
            color: ui.backGroundHomePage,
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildDropdownButton(
                    labelText: "Cỡ chữ",
                    value: ui.strFontSize,
                    onChanged: (String? value) {
                      ui.fontSize = value!;
                    },
                    items: UserInterface.listFontSize,
                  ),
                  SizedBox(height: 20),
                  buildDropdownButton(
                    labelText: "Màu sắc giao diện",
                    value: ui.strAppBarColor,
                    onChanged: (String? value) {
                      ui.appBarColor = value!;
                    },
                    items: UserInterface.listColorAppBar,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildDropdownButton({
    required String labelText,
    required String value,
    required Function(String?) onChanged,
    required List<String> items,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        DropdownButton<String>(
          value: value,
          items: items.map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            },
          ).toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}


