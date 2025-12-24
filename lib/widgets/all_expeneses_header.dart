import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/range_options.dart';

class AllExpenesesHeader extends StatelessWidget {
  const AllExpenesesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses',style: AppStyles.styleSemiBold20(context),),
        Spacer(),
       RangeOptions()
      ],
    );
  }
}