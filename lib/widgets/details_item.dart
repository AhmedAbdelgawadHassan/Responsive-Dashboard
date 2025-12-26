import
 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
      return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.dotColor,
          shape: const OvalBorder(),
        ),
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit:BoxFit.scaleDown ,
          child: Text(
            itemDetailsModel.title,
            style: AppStyles.styleRegular16(context),
          ),
        ),
      ),
      trailing: FittedBox(
        fit:BoxFit.scaleDown ,
        child: Text(
          "${itemDetailsModel.percentage}%",
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
    
  }
}