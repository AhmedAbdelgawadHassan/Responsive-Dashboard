import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expeneses_item.dart';

class AllExpnesesItemsListview extends StatefulWidget {
  const AllExpnesesItemsListview({super.key});

  @override
  State<AllExpnesesItemsListview> createState() => _AllExpnesesItemsListviewState();
}

class _AllExpnesesItemsListviewState extends State<AllExpnesesItemsListview> {
  List<AllExpensesItemModel> allExpensesItems =[
   AllExpensesItemModel(image: AppImages.imagesBalance, title: 'Balance', price: '\$20,129', date: 'April 2022'),
    AllExpensesItemModel(image: AppImages.imagesIncome, title: 'Income', price: '\$20,129', date: 'April 2022'),
    AllExpensesItemModel(image: AppImages.imagesExpenses, title: 'Expenses', price: '\$20,129', date: 'April 2022'),
  ];
   int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: GestureDetector(
          onTap: () =>setState(() => selectedIndex=0),
          child: AllExpenesesItem(allExpensesItemModel: allExpensesItems[0], isActive: selectedIndex==0,))),
          Gap(10),
        Expanded(child: GestureDetector(
          onTap: () =>setState(() => selectedIndex=1),
          child: AllExpenesesItem(allExpensesItemModel: allExpensesItems[1], isActive: selectedIndex==1,))),
      Gap(10),
        Expanded(child: GestureDetector(
          onTap: () =>setState(() => selectedIndex=2),
          child: AllExpenesesItem(allExpensesItemModel: allExpensesItems[2], isActive: selectedIndex==2,))),
      ],
    );
    
    
    
    
    // Row(                // we doesn't use listview.builder because we have to put fixed height to AllExpenesesItem so we use Row insteadof listview.builder
    //   children: allExpensesItems.asMap().entries.map((e) {      // we use asMap() to get the index of each item
    //     int index =e.key;   // we use index to get the index of each item
    //     var item=e.value;   // we use value to get the value of each item
    //       // we use index 1 to give it only padding to second item because we doesn't want to give padding to other items (fitst,third)
    //       return Expanded(child: Padding(
    //         padding:  EdgeInsets.symmetric( horizontal:index==1? 0:0),
    //         child: GestureDetector(
    //           onTap: () {
    //             setState(() {
    //               selectedIndex=index;
    //             });
    //           },
    //           child: AllExpenesesItem(allExpensesItemModel: item, isActive: selectedIndex==index,)),
    //       ));
    //     }
      
    //   ,).toList()   // we use toList() to convert the map to list , because Row accepts only list
    // );
  // }
  }}