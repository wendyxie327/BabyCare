import 'package:flutter/material.dart';

class GlobalConfig {

  static String appName = "喂养记录";

  // 不重要的显示内容颜色
  static Color colorNote = Colors.black54;

  static Color primaryColor = Colors.pink[300];
  static Color iconFeedColor = Color(0xffefb336);
  static Color iconNappyColor = Color(0xff1195db);
  static Color iconSleepColor = Color(0xff24b1a9);
  static Color iconStatureColor = Color(0xffa686ba);

  // 获取模块对应颜色
  static getModelColor(String title){
    Color selectColor;
    switch(title){
      case "喂养":
        selectColor = iconFeedColor;
        break;
      case "尿片":
        selectColor = iconNappyColor;
        break;
      case "睡眠":
        selectColor = iconSleepColor;
        break;
      case "身高":
        selectColor = iconStatureColor;
        break;
    }

    return selectColor;
  }

  // 获取模块对应颜色
  static getModelIconPath(String title){
    String iconPath;
    switch(title){
      case "喂养":
        iconPath = "images/ic_feed.png";
        break;
      case "尿片":
        iconPath = "images/ic_nappy.png";
        break;
      case "睡眠":
        iconPath = "images/ic_sleep.png";
        break;
      case "身高":
        iconPath = "images/ic_stature.png";
        break;

        default:
          iconPath = "images/ic_stature.png";

    }

    return iconPath;
  }
}