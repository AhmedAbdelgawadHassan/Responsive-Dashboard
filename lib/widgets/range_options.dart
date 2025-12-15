import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color:Color(0XFFF1F1F1)),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Row(children: [
            Text('Monthly',style: AppStyles.styleMedium16,),
            Gap(18),
            Transform.rotate(  // to move the direction of icon to down side by angle
              angle: -1.57079633,  // angle in radians unit not degrees  (i want to move it 90 degrees that is = 1.57079633 radians) and minus - it will move it to down side
              child: Icon(Icons.arrow_back_ios_new_outlined,size: 18,color: Color(0XFF064061),))
          ],),
        );
  }
}