import 'package:build_ui/core/constants/app_font_styles.dart';
import 'package:flutter/material.dart';

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(Icons.person, size: 30),
          ),
          title: Text(
            'Ali Ahmad',
            style: AppFontStyles.fontSize16Weight400WithColorBlack,
          ),
          subtitle: Text(
            'ali12@gmail.com',
            style: AppFontStyles.fontSize14Weight600WithGreyColor,
          ),
        ),
        
      ],
    );
  }
}
