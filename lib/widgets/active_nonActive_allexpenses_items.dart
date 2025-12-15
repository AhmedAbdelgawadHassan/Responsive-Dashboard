// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class NonActiveAllexpensesItem extends StatelessWidget {
  const NonActiveAllexpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0XFFF1F1F1)),
        color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFFFAFAFA),
                ),
                child: SvgPicture.asset(allExpensesItemModel.image),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
          Gap(34),
          Text(allExpensesItemModel.title,style: AppStyles.styleSemiBold16,),
          Gap(10),
          Text(allExpensesItemModel.date,style: AppStyles.styleRegular14,),
          Gap(15),
          Text(allExpensesItemModel.date,style: AppStyles.styleSemiBold24,)
        ],
      ),
    );
  }
}




class ActiveAllexpensesItem extends StatelessWidget {
  const ActiveAllexpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xff4DB5EF)),
        color: Color(0xff4DB5EF)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff5FBCF1),
                ),
                child: SvgPicture.asset(allExpensesItemModel.image,color: Colors.white,),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios,color: Colors.white,)
            ],
          ),
          Gap(34),
          Text(allExpensesItemModel.title,style:  AppStyles.styleSemiBold16.copyWith(color: Colors.white),),
          Gap(10),
          Text(allExpensesItemModel.date,style: AppStyles.styleRegular14.copyWith(color: Colors.white),),
          Gap(15),
          Text(allExpensesItemModel.date,style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),)
        ],
      ),
    );
  }
}
