import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/Widgets/homepage.dart';


class Setting {
  final String title;
  final String route;
  final IconData icon;

  Setting({
    required this.title,
    required this.route,
    required this.icon,
  });
}

final List<Setting> settings = [
  Setting(
    title: "Thông tin tài khoản",
    // route: "/",
    route: '/',
    // route: (context) => MyHomePage(),
    icon: CupertinoIcons.person_fill,
  ),
  Setting(
    title: "Giới thiệu ứng dụng",
    route: "/",
    icon: Icons.info,
  ),
  Setting(
    title: "Ngôn ngữ",
    route: "/",
    icon: CupertinoIcons.globe,
  ),
  Setting(
    title: "Kích thước văn bản",
    route: "/font_size",
    icon: CupertinoIcons.textformat_size,
  ),
];

final List<Setting> settings2 = [
  Setting(
    title: "Tài khoản & đồng bộ",
    route: "/",
    icon: CupertinoIcons.ellipsis_vertical_circle_fill,
  ),
  Setting(
    title: "Mật khẩu và bảo mật",
    route: "/",
    icon: CupertinoIcons.shield_fill,
  ),
  Setting(
    title: "Chế độ nền tối",
    route: "/",
    icon: CupertinoIcons.moon_fill,
  ),
  Setting(
    title: "Đăng xuất",
    route: "/",
    icon: CupertinoIcons.arrow_left,
  ),
];



