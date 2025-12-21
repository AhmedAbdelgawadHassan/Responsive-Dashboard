import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout.dart';


class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer()),
        Gap(32),
        Expanded(
          flex: 3,
          child: 
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DashboardMobileLayout())
        )
      
      ],
    );
  }
}