import 'package:flutter/material.dart';
import 'package:navigation_exercise/presentation/first_page.dart';
import 'package:navigation_exercise/presentation/fourth_page.dart';
import 'package:navigation_exercise/presentation/second_page.dart';
import 'package:navigation_exercise/presentation/third_page.dart';

abstract class Navigation {
  static const pagesMap = <String, Widget Function()>{
    'firstPage': FirstPage.new,
    'secondPage': SecondPage.new,
    'thirdPage': ThirdPage.new,
    'fourthPage': FourthPage.new,
  };
}
