import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/widgets/active_nonActive_allexpenses_items.dart';

class AllExpenesesItem extends StatelessWidget {
  const AllExpenesesItem({super.key, required this.allExpensesItemModel, required this.isActive});
  final AllExpensesItemModel allExpensesItemModel ;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive? ActiveAllexpensesItem(allExpensesItemModel: allExpensesItemModel): NonActiveAllexpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}

