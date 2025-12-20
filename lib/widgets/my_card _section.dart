import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/mycards_pageView.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      margin: 20,
      borderRaduis: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20)),
      padding: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Card',style: AppStyles.styleSemiBold20,),
          Gap(10),
            MycardsPageview(),
        ],
      ),
    );
  }
}

