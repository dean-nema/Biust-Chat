import 'package:flutter/material.dart';
import 'package:stuff_neh/components/app_text_field.dart';
import 'package:stuff_neh/components/toolbar.dart';
import 'package:stuff_neh/components/user_avatar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Edit Profile"),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          Stack(),
          children: [
            UserAvatar(
              size: 120,
              ),
            AppTextField(
              hint: 'First Name'
              ),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'First Name'),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'First Name'),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'Location'),
          ],
        ),
      )
    );
  }
}