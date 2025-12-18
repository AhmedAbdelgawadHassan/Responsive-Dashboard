import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/all_expneses.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/my_card%20_sectiondart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';
class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer()),
        Gap(32),
        Expanded(
          flex: 3,
          child: Column(
          children: [
            AllEpenses(),
            Gap(25),
          Expanded(child: QuickInvoice())
          ],
        )),
        Gap(24),
        Expanded(
          flex: 2,
          child: MyCardSection())
      ],
    );
}}