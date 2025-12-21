import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/allEpenses_and_quickInvoice_section.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card%20_section.dart';
import 'package:responsive_dashboard/widgets/transactions_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
                children: [
                  AllepensesAndQuickinvoiceSection(),
                  MyCardSection(),
                  TransactionsHistorySection(),
                  IncomeSection(),
                  Gap(20)
                ],
              ),
    );
  }
}