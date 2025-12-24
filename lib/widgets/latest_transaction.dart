import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/latest_transactions_listview.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction',style: AppStyles.styleRegular16(context),),
        Gap(20),
        LatestTransactionsListview(),
        Gap(10),
           QuickInvoiceForm()
      ],
    );
  }
}