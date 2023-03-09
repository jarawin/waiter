import 'package:flutter/material.dart';
import 'package:food_delivery/home/main_point_screen.dart';
import 'package:food_delivery/not_use_file/main_food_page.dart';
import 'package:get/get.dart';

void main() => runApp(GetMaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPointScreen(),
      //home: MainFoodPage(),
    );
  }
}
