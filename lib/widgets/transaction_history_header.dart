import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionsHistoryHeader extends StatelessWidget {
  const TransactionsHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transactions History',
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        Text(
          'See all',
          style: AppStyles.styleMedium16
              .copyWith(color:Color(0xff4EB7F2)),
          )
       
      ],
    );
  }
}