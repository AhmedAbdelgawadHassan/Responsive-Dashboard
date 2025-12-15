import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/all_expneses.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Gap(32),
        Expanded(
          flex: 3,
          child: Column(
          children: [
            Expanded(child: AllEpenses()),
          ],
        )),
        Expanded(
          flex: 2,
          child: Container())
      ],
    );
}}