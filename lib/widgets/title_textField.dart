import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_textField.dart';

class TitleTextfield extends StatelessWidget {
  const TitleTextfield({super.key, required this.hintText, required this.title});
  final String hintText ;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title,style: AppStyles.styleSemiBold12.copyWith(color: Colors.black),),
      Gap(5),
      CustomTextfield(
        hintText: hintText,
      )
    ],
    );
  }
}