import 'package:flutter/material.dart';
import 'package:stuff_neh/components/app_text_field.dart';
import 'package:stuff_neh/components/toolbar.dart';
import 'package:stuff_neh/components/user_avatar.dart';
import 'package:stuff_neh/styles/app_colors.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Edit Profile"),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Stack(
              children: [
                UserAvatar(
              size: 120,
              ), 
              Positioned(
                bottom: 0,
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: Icon(Icons.edit)
                  )
                ),
              ],
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