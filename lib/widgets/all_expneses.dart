import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/all_expeneses_header.dart';
import 'package:responsive_dashboard/widgets/all_expneses_items_listview.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

class AllEpenses extends StatelessWidget {
  const AllEpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 20,
      margin: 20,
      borderRaduis: BorderRadius.circular(12),
      child: Column(
        children: [
          AllExpenesesHeader(),
          Gap(20),
           AllExpnesesItemsListview(),
           
        ],
      ), );
  }
}
