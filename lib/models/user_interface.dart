// import 'package:flutter/material.dart';

// class UserInterface with ChangeNotifier {
//   static const List<String> listColorAppBar = ['Blue', 'Green', 'Red', 'Purple', 'Orange'];
//   static const List<String> listBackGoundHomePage = ['Black', 'White'];
//   static const List<double> listFontSize = [12, 16, 30];

//   double _fontSize = 16;
//   String _appBarColor = 'Blue';
//   String _backGoundHomePage = 'White';
//   String _textColor = 'Black';

//   set textColor( newColor) {
//     _textColor = newColor;
//     notifyListeners();
//   }

//   set appBarColor( newColor) {
//     _appBarColor = newColor;
//     notifyListeners();
//   }

//   set backGroundHomePage( newColor) {
//     _backGoundHomePage = newColor;
//     notifyListeners();
//   }

//   setFontSize( newSize) {
//     _fontSize = newSize;
//     notifyListeners();
//   }

//   Color get appBarColor {
//     switch (_appBarColor) {
//       case 'Blue':
//         return Colors.blue;
//       case 'Green':
//         return Colors.green;
//       case 'Red':
//         return Colors.red;
//       case 'Purple':
//         return Colors.purple;
//       case 'Orange':
//         return Colors.orange;
//       default:
//         return Colors.white;
//     }
//   }

//   Color get backGroundHomePage {
//     switch (_backGoundHomePage) {
//       case 'Black':
//         return Colors.black;
//       case 'White':
//         return Colors.white;
//       default:
//         return Colors.white;
//     }
//   }

//   Color get textColor {
//     if (_backGoundHomePage == 'Black') {
//       return Colors.white;
//     } else {
//       return Colors.black;
//     }
//   }

//   String get strAppBarColor => _appBarColor;
//   String get strBackGoundHomePage => _backGoundHomePage;
//   String get strTextColor => _textColor;

//   double get fontSize => _fontSize;
// }


import 'package:flutter/material.dart';

class UserInterface with ChangeNotifier {
  static const List<String> listColorAppBar = ['Blue', 'Green', 'Purple'];
  static const List<String> listBackGoundHomePage = ['Black', 'White'];
  static const List<String> listFontSize = ['Rất nhỏ', 'Nhỏ', 'Vừa', 'Lớn', 'Rất lớn'];

  String _fontSize = 'Vừa'; // Changed the type to String
  String _appBarColor = 'Blue';
  String _backGoundHomePage = 'White';
  String _textColor = 'Black';

  set textColor(newColor) {
    _textColor = newColor;
    notifyListeners();
  }

  set appBarColor(newColor) {
    _appBarColor = newColor;
    notifyListeners();
  }

  set backGroundHomePage(newColor) {
    _backGoundHomePage = newColor;
    notifyListeners();
  }

  set fontSize(newSize) {
    _fontSize = newSize;
    notifyListeners();
  }

  double get fontSize {
  switch (_fontSize) {
    case 'Rất nhỏ':
      return 10;
    case 'Nhỏ':
      return 14;
    case 'Vừa':
      return 16;
    case 'Lớn':
      return 18;
    case 'Rất lớn':
      return 30;
    default:
      return 14;
  }
}


  Color get appBarColor {
    switch (_appBarColor) {
      case 'Blue':
        return Colors.blue;
      case 'Green':
        return Colors.green;
      case 'Purple':
        return Colors.purple;
      default:
        return Colors.white;
    }
  }

  Color get backGroundHomePage {
    switch (_backGoundHomePage) {
      case 'Black':
        return Colors.black;
      case 'White':
        return Colors.white;
      default:
        return Colors.white;
    }
  }

  Color get textColor {
    if (_backGoundHomePage == 'Black') {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  String get strAppBarColor => _appBarColor;
  String get strBackGoundHomePage => _backGoundHomePage;
  String get strTextColor => _textColor;

  String get strFontSize => _fontSize; // Added a getter for string font size
}


