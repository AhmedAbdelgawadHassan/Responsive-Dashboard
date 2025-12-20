import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/all_expneses.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card%20_section.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';
import 'package:responsive_dashboard/widgets/transactions_history_section.dart';
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyCardSection(),
                TransactionsHistorySection(),
                Gap(10),
                IncomeSection()
            
              ],
            ),
          ))
      ],
    );
}}