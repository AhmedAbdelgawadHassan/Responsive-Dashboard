import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/details_item_listview.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
       padding: 20, borderRaduis: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
       ),child: Column(
        children: [
          IncomeHeader(),
          Row(
            children: [
              IncomeChart(),
              Gap(20),
              DetailsItemListview()
            ],
          )
           
        ],
       ));
  }
}