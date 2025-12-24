import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/all_expneses.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class AllepensesAndQuickinvoiceSection extends StatelessWidget {
  const AllepensesAndQuickinvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            AllEpenses(),
            Gap(20),
            QuickInvoice()
          ],
        );
  }
}