import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/widgets/details_item.dart';

class DetailsItemListview extends StatelessWidget {
  const DetailsItemListview({super.key});
  static List<ItemDetailsModel> detailsItems = [
    ItemDetailsModel(title: "Design Product", dotColor: Color(0xff208CC8), percentage: 40),
    ItemDetailsModel(title: "Design service", dotColor: Color(0xff4EB7F2), percentage: 25),
    ItemDetailsModel(title: "Product royalti", dotColor: Color(0xff064061), percentage: 20),
    ItemDetailsModel(title: "Other", dotColor: Color(0xffE2DECD), percentage: 22),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: detailsItems.length,
        shrinkWrap: true,
        itemBuilder:(context, index) {
          return DetailsItem(itemDetailsModel: detailsItems[index]);
        },),
    );
  }
}