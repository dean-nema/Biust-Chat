import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stuff_neh/config/app_icons.dart';
import 'package:stuff_neh/pages/home_page.dart';
import 'package:stuff_neh/pages/profile_page.dart';
import 'package:stuff_neh/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex.index],
        bottomNavigationBar: MyButtonNavigation(
          currentIndex: currentIndex.index,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        ));
  }

  final pages = [
    HomePage(),
    Center(child: Text("Favorite")),
    Center(child: Text("Add Post")),
    Center(child: Text("Messages")),
    ProfilePage(),
  ];
}

enum Menus { home, favourites, add, messages, profile }

class MyButtonNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<Menus> onTap;
  const MyButtonNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Row(children: [
                //Expand is used to eqaully divide things within a container or widget
                Expanded(
                    child: IconButton(
                  onPressed: () =>onTap(Menus.home),
                 icon: SvgPicture.asset(
                  AppIcons.home,
                  colorFilter: 
                   ColorFilter.mode(
                    Colors.black, 
                    BlendMode.srcIn)
                  ),
                )),
                Expanded(
                    child: IconButton(
                  onPressed: () => onTap(Menus.favourites),
                  icon: SvgPicture.asset(AppIcons.favourites),
                )),
                Spacer(),
                Expanded(
                    child: IconButton(
                  onPressed: () => onTap(Menus.messages),
                  icon: SvgPicture.asset(AppIcons.messages),
                )),
                Expanded(
                    child: IconButton(
                  onPressed: () => onTap(Menus.profile),
                  icon: SvgPicture.asset(AppIcons.profile),
                ))
              ]),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                width: 64,
                height: 64,
                // padding: const EdgeInsets.all2(16),
                decoration: BoxDecoration(
                    color: AppColors.primary, shape: BoxShape.circle),
                child:  SvgPicture.asset(AppIcons.addPost),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
