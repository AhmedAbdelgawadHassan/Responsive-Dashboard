import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/allEpenses_and_quickInvoice_section.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card%20_section.dart';
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
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: AllepensesAndQuickinvoiceSection(),
          )),
        Gap(24),
        Expanded(
          flex: 2,
          child:  SingleChildScrollView(
            child: Column(
                children: [
                  MyCardSection(),
                  TransactionsHistorySection(),
                  Gap(10),
                  IncomeSection()
              
                ],
              ),
          ),
          )
      ],
    );
}}