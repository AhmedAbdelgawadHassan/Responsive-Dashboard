import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionsHistorySection extends StatelessWidget {
  const TransactionsHistorySection({super.key});
  static  List<TransactionModel> transactionsItems=[
    TransactionModel(title: 'Payment to John Doe', date: '12 April 2022', amount: '\$150.00', iswithdrawn: true),
    TransactionModel(title: 'Salary from Company XYZ', date: '11 April 2022', amount: '\$2000.00', iswithdrawn: false),
    TransactionModel(title: 'Grocery Shopping', date: '10 April 2022', amount: '\$75.50', iswithdrawn: true),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 20,
      borderRaduis: BorderRadius.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(height: 40, color: const Color.fromARGB(255, 236, 235, 235)),
          TransactionsHistoryHeader(),
          Gap(15),
          Text('13 April 2022',
          style: AppStyles.styleMedium16.copyWith(
            color: Color(0xffAAAAAA)
          ),
          ),
          Gap(10),
          ListView.builder(
            shrinkWrap: true,// to make ListView take only the space it needs (not Expand)
            itemCount: transactionsItems.length,
            itemBuilder: (context, index) {
            return TransactionItem(transactionModel:transactionsItems[index] );
          },)
          
        ],
      ),
    );
  }
}
