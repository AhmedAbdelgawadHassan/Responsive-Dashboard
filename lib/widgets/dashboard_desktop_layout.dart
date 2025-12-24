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
        Expanded(flex: 1, child: CustomDrawer()),
        Gap(15),
        Expanded(
          flex: 5,
          child: CustomScrollView(
            // because it has sliverfillRemaining that accepted Expanded widget .
            slivers: [
              SliverFillRemaining(
                // accepted Expanded widget without errors
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: AllepensesAndQuickinvoiceSection(),
                      ),
                    ),
                    Gap(15),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          MyCardSection(),
                          TransactionsHistorySection(),
                          Gap(10),
                          IncomeSection(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
