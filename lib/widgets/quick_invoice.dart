import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quickInvioce_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 15,
      borderRaduis: BorderRadius.circular(12),
      child: Column(
        children: [
   QuickinvioceHeader(),
   Gap(12),
   LatestTransaction()
        ],
      )
    );
  }
}