import 'package:flutter/material.dart';
import 'package:task_manager/core/values/app_color.dart';

abstract class AppIcon {
  static const person = 0xe491;
  static const work = 0xe11c;
  static const movie = 0xe40f;
  static const sport = 0xe4dc;
  static const travel = 0xe071;
  static const shop = 0xe59c;

  static const List<Icon> iconsWidgets = [
    Icon(
      IconData(
        person,
        fontFamily: "MaterialIcons",
      ),
      color: AppColor.purple,
    ),
    Icon(
      IconData(work, fontFamily: "MaterialIcons"),
      color: AppColor.pink,
    ),
    Icon(
      IconData(movie, fontFamily: "MaterialIcons"),
      color: AppColor.green,
    ),
    Icon(
      IconData(sport, fontFamily: "MaterialIcons"),
      color: AppColor.yellow,
    ),
    Icon(
      IconData(travel, fontFamily: "MaterialIcons"),
      color: AppColor.deepPink,
    ),
    Icon(
      IconData(shop, fontFamily: "MaterialIcons"),
      color: AppColor.lightBlue,
    ),
  ];
}
