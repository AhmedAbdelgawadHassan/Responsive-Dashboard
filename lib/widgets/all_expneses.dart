import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/all_expeneses_header.dart';
import 'package:responsive_dashboard/widgets/all_expneses_items_listview.dart';

class AllEpenses extends StatelessWidget {
  const AllEpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.white
      ),
      child: Column(
        children: [
          AllExpenesesHeader(),
          Gap(20),
           AllExpnesesItemsListview()
        ],
      ),
    );
  }
}