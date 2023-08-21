import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stuff_neh/config/app_icons.dart';
import 'package:stuff_neh/pages/home_page.dart';
import 'package:stuff_neh/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.favourites),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.addPost),
              label: 'add Post'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.messages),
              label: 'messages'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.profile),
              label: 'Profile'),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(child: Text("Favorite")),
    Center(child:Text("Add Post")),
    Center(child: Text("Messages")),
    ProfilePage(),
  ];
}
