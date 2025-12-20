import
 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(  //to wrap the width of ListTile according to its content
      child: ListTile(
        leading: Container(
          width: 12,
          decoration: BoxDecoration(
            color: itemDetailsModel.dotColor,
            shape: BoxShape.circle,
          ),
        ),
        title: Text(itemDetailsModel.title,style: AppStyles.styleRegular16,),
        trailing: Text({'${itemDetailsModel.percentage}%' }.toString(),style: AppStyles.styleRegular16,),
      ),
    );
  }
}