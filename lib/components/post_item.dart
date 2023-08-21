import 'package:flutter/material.dart';
import 'package:stuff_neh/styles/app_text.dart';
class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                '../assets/temp/profile.jpg',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset('../assets/temp/post.jpg'),
          SizedBox(
            height: 12,
          ),
          Text(
            'Absolutely Love the new Chapter LMAO',
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
