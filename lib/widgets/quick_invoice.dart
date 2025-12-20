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
      padding: 24,
      borderRaduis: BorderRadius.circular(12),
      child: CustomScrollView(
        slivers: [
   SliverToBoxAdapter(child: QuickinvioceHeader()),
   SliverToBoxAdapter(child: Gap(12)),
   SliverToBoxAdapter(child: LatestTransaction())
        ],
      )
    );
  }
}