import 'package:flutter/material.dart';
import 'package:test_project/constant/app_color.dart';
import 'package:test_project/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColor.firstColor,
      ),
      title: 'My app',
      home: FirstScreen(),
    );
  }
}
