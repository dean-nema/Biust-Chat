import 'package:flutter/material.dart';
import 'package:stuff_neh/components/toolbar.dart';
import 'package:stuff_neh/styles/app_text.dart';

enum ProfileMenu{
    edit,
    logout
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "Profile",
        actions: [
          PopupMenuButton<ProfileMenu>(onSelected: (value) {
            switch (value) {
              case ProfileMenu.edit:
                print('Edit');
                break;
              case ProfileMenu.logout:
                print('log out');
                break;
              default:
            }
          },
           itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text('Edit'),
                value: ProfileMenu.edit,
              ),
              PopupMenuItem(
                child: Text('Log Out'),
                value: ProfileMenu.logout,
              ),
            ];
          })
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            child: Image.asset(
              "../assets/temp/profile.jpg",
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Travis Jackson',
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Checkers',
            style: AppText.subtitle2,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                //followers
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text("Followers"),
                ],
              ),
              Column(
                //Post
                children: [
                  Text(
                    '119',
                    style: AppText.header2,
                  ),
                  Text("Post"),
                ],
              ),
              Column(
                //Following
                children: [
                  Text(
                    '200',
                    style: AppText.header2,
                  ),
                  Text("Following"),
                ],
              )
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          )
        ],
      ),
    );
  }
}
