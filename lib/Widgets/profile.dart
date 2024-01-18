import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '/models/user_interface.dart';
import 'package:provider/provider.dart';
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 50,
//         backgroundColor: Colors.blue,
//         iconTheme: IconThemeData(color: Colors.white), // Đặt màu cho biểu tượng
//         title: Text(
//           "Employee Information",
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.white, // Đặt màu cho văn bản
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             const SizedBox(height: 40),
//             CircleAvatar(
//               radius: 70,
//               backgroundImage: AssetImage('assets/images/user2.png'),
//             ),
//             const SizedBox(height: 20),
//             itemProfile('Name', 'Nguyễn Đức Anh', CupertinoIcons.person),
//             const SizedBox(height: 10),
//             itemProfile('Phone', '0981402765', CupertinoIcons.phone),
//             const SizedBox(height: 10),
//             itemProfile('Address', 'Hà Đông', CupertinoIcons.location),
//             const SizedBox(height: 10),
//             itemProfile('Email', '21012478@st.phenikaa-uni.edu.vn', CupertinoIcons.mail),
//             const SizedBox(height: 20,),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.all(15),
//                   ),
//                   child: const Text('Edit Profile')
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   itemProfile(String title, String subtitle, IconData iconData) {
//     return Container(
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//                 offset: Offset(0, 5),
//                 color: const Color.fromARGB(255, 173, 167, 165).withOpacity(.2),
//                 spreadRadius: 2,
//                 blurRadius: 10
//             )
//           ]
//       ),
//       child: ListTile(
//         title: Text(title),
//         subtitle: Text(subtitle),
//         leading: Icon(iconData),
//         trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
//         tileColor: Colors.white,
//       ),
//     );
//   }
// }

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<UserInterface>(
      builder: (context, ui, child) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            backgroundColor: ui.appBarColor,
            iconTheme: IconThemeData(color: Colors.white),
            title: Text(
              "Employee Information",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 40),
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/user2.png'),
                ),
                const SizedBox(height: 20),
                itemProfile('Name', 'Nguyễn Đức Anh', CupertinoIcons.person),
                const SizedBox(height: 10),
                itemProfile('Phone', '0981402765', CupertinoIcons.phone),
                const SizedBox(height: 10),
                itemProfile('Address', 'Hà Đông', CupertinoIcons.location),
                const SizedBox(height: 10),
                itemProfile('Email', '21012478@st.phenikaa-uni.edu.vn', CupertinoIcons.mail),
                const SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Text('Edit Profile'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            color: const Color.fromARGB(255, 173, 167, 165).withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}