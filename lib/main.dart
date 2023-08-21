import 'package:flutter/material.dart';
import 'package:stuff_neh/pages/Login_page.dart';
import 'package:stuff_neh/pages/home_page.dart';
import 'package:stuff_neh/pages/main_page.dart';
import 'package:stuff_neh/pages/test.dart';
import 'package:stuff_neh/styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => LoginPage(),
        '/home':(context) => HomePage(),
        '/main':(context) => MainPage(),
      },
    );
  }
}
