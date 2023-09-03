import 'package:flutter/material.dart';
import 'package:stuff_neh/components/app_text_field.dart';
import 'package:stuff_neh/components/toolbar.dart';
import 'package:stuff_neh/components/user_avatar.dart';
import 'package:stuff_neh/styles/app_colors.dart';
import 'package:stuff_neh/styles/app_text.dart';

enum Gender { male, female, none, other }

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Toolbar(title: "Edit Profile"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: UserAvatar(
                        size: 120,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        // top: 0,
                        right: 0,
                        // left: 0,
                        child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: Icon(
                              Icons.edit,
                              size: 20,
                              color: Colors.black,
                            ))),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                AppTextField(hint: 'First Name'),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: 'Middle Name'),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: 'Last Name'),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: 'Email'),
                SizedBox(
                  height: 16,
                ),
                AppTextField(hint: 'Birthday'),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.only(),//aligns where the widgets start spacing from the left
                  decoration: BoxDecoration(
                  color: AppColors.fieldColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Column(
                    crossAxisAlignment:  CrossAxisAlignment.start,//Alignment like center right and stuff whereby start is left aligned
                    children: [
                       Text("Gender",
                      style: AppText.body1.copyWith(
                        fontSize: 12,
                      ),),
                      const SizedBox(
                         height: 16,
                       ),
                      Row(
                        children: [
                            Expanded(
                              child: RadioListTile(
                              title: const Text("Male",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                               ),),
                                                value: Gender.male,
                                                visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
                                                contentPadding: EdgeInsets.zero,
                                                groupValue: gender,
                                                onChanged: (value) {
                              setState(() {
                                gender = Gender.male;
                              });
                                                }),
                            ),
                            Expanded(  
                              child: RadioListTile(
                                  title: Text("Female",
                                  style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  ),),
                                                contentPadding: EdgeInsets.zero,
                                                visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
                                                value: Gender.female,
                                                groupValue: gender,
                                                onChanged: (value) {
                                                  setState(() {
                                                    gender = Gender.female;
                                                  });
                                                }),
                            ),
                            Expanded(
                              child: RadioListTile(
                                  title: Text('Other',
                                  style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  ),),
                                                value: Gender.other,
                                                visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
                                                contentPadding: EdgeInsets.zero,
                                                groupValue: gender,
                                                onChanged: (value) {
                                                  setState(() {
                                                    gender = Gender.other;
                                                  });
                                                }),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
