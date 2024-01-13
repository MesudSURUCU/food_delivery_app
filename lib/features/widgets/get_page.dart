import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/foods_list_page/appetizer_list.dart';
import 'package:food_delivery_app/views/foods_list_page/dessert_list.dart';
import 'package:food_delivery_app/views/foods_list_page/drink_list.dart';
import 'package:food_delivery_app/views/foods_list_page/main_course_list.dart';
import 'package:food_delivery_app/views/foods_list_page/menu_day_list.dart';
import 'package:food_delivery_app/views/foods_list_page/salad_list.dart';
import 'package:food_delivery_app/views/foods_list_page/soup_list.dart';
import 'package:food_delivery_app/views/foods_list_page/warm_starter_list.dart';

Widget getPage(String pageName) {
  switch (pageName) {
    case 'SoupListPage' : return const SoupListPage();
    case 'AppetizerListPage' : return const AppetizerListPage();
    case 'MainCourseListPage' : return const MainCourseListPage();
    case 'DessertListPage' : return const DessertListPage();
    case 'WarmStarterListPage' : return const WarmStarterListPage();
    case 'DrinkListPage' : return const DrinkListPage();
    case 'MenuDayListPage' : return  MenuDayListPage();
    case 'SaladListPage' : return const SaladListPage();

    default:
      return const Scaffold(
        body: Center(
          child: Text('Belirtilen sayfa bulunamadı'),
        ),
      );

  }
}