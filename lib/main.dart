import 'package:flutter/material.dart';
import 'package:stuff_neh/config/app_routes.dart';
import 'package:stuff_neh/pages/Login_page.dart';
import 'package:stuff_neh/pages/edit_profile_page.dart';
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
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}
