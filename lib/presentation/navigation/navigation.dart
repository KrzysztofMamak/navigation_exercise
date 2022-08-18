import 'package:flutter/material.dart';
import 'package:navigation_exercise/presentation/page/first_page.dart';
import 'package:navigation_exercise/presentation/page/fourth_page.dart';
import 'package:navigation_exercise/presentation/page/second_page.dart';
import 'package:navigation_exercise/presentation/page/third_page.dart';

abstract class Navigation {
  static const pagesMap = <String, Widget Function()>{
    'firstPage': FirstPage.new,
    'secondPage': SecondPage.new,
    'thirdPage': ThirdPage.new,
    'fourthPage': FourthPage.new,
  };
}
