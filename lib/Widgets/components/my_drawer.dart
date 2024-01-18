import 'package:flutter/material.dart';
import '/models/user_interface.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserInterface>(
      builder: (context, ui, child) {
        return Drawer(
          child: ListView(
            children: [
              // UserAccountsDrawerHeader(
              //   accountName: const Text('Nguyễn Đức Anh'),
              //   accountEmail: const Text('21012478@st.phenikaa-uni.edu.vn'),
              //   currentAccountPicture: CircleAvatar(
              //     backgroundImage: AssetImage('images/user2.png'),
              //   ),
              //   decoration: BoxDecoration(
              //     color: ui.appBarColor,
              //   ),
              // ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop(); // Đóng Drawer nếu nó đang mở
                  Navigator.of(context).pushNamed('/profile'); // Điều hướng đến trang mới
                },
                child: UserAccountsDrawerHeader(
                  accountName: const Text('Nguyễn Đức Anh'),
                  accountEmail: const Text('21012478@st.phenikaa-uni.edu.vn'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/user2.png'),
                  ),
                  decoration: BoxDecoration(
                    color: ui.appBarColor,
                  ),
                ),
              ),

              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Tổng quan"),
                onTap: () {
                  Navigator.of(context).popAndPushNamed("/");
                },
              ),
              ListTile(
                leading: Icon(Icons.supervisor_account_sharp),
                title: Text("Quản lý nhân viên"),
                onTap: () {
                  Navigator.of(context).popAndPushNamed("/employee_imfo");
                },
              ),
              ListTile(
                leading: Icon(Icons.work),
                title: Text("Quản lý chức vụ"),
                onTap: () {
                  Navigator.of(context).popAndPushNamed("/");
                },
              ),
              ListTile(
                leading: Icon(Icons.meeting_room_sharp),
                title: Text("Quản lý phòng ban"),
                onTap: () {
                  Navigator.of(context).popAndPushNamed("/");
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Cài đặt"),
                onTap: () {
                  Navigator.of(context).popAndPushNamed("/");
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
