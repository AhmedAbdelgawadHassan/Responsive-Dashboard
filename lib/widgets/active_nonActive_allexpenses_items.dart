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
              Flexible(
                child: ConstrainedBox(   // to limit the width of the container 
                  constraints: BoxConstraints(maxWidth: 60),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                            
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFFAFAFA),
                      ),
                      child: Center(child: SvgPicture.asset(allExpensesItemModel.image,height: 32,width: 32,)),
                    ),
                  ),
                ),
              ),
              Spacer(),
            Flexible(child: Icon(Icons.arrow_forward_ios))
            ],
          ),
          Gap(20),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.title,style: AppStyles.styleSemiBold16(context),)),
          Gap(5),
          FittedBox(
             fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.date,style: AppStyles.styleRegular14(context),)),
          Gap(5),
          FittedBox(
             fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.price,style: AppStyles.styleSemiBold24(context),))
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
              Flexible(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 60),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                    
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff5FBCF1),
                      ),
                      child: Center(child: SvgPicture.asset(allExpensesItemModel.image,color: Colors.white,height: 32,width: 32,)),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Flexible(child: Icon(Icons.arrow_forward_ios,color: Colors.white,))
            ],
          ),
          Gap(20),
          FittedBox(
             fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.title,style:  AppStyles.styleSemiBold16(context).copyWith(color: Colors.white),)),
          Gap(5),
          FittedBox(
             fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.date,style: AppStyles.styleRegular14(context).copyWith(color: Colors.white),)),
          Gap(5),
          FittedBox(
             fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.price,style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),))
        ],
      ),
    );
  }
}
