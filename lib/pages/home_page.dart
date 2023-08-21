import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stuff_neh/components/post_item.dart';
import 'package:stuff_neh/components/toolbar.dart';
// import 'package:stuff_neh/styles/app_colors.dart';
// import 'package:stuff_neh/styles/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar:Toolbar(title: 'Biust Chat', actions: [
        IconButton(
          onPressed: (){

          },
          icon: SvgPicture.asset('../assets/svg/location.svg'),
        ),
      ],),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 24,
          );
        },
        itemCount: users.length,
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add("User number $i");
    }
  }
}
