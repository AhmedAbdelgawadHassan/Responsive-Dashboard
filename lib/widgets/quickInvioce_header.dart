import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickinvioceHeader extends StatelessWidget {
  const QuickinvioceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
   Text('Quick Invoice',style: AppStyles.styleSemiBold20(context),),
     Spacer(),
     Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xffF7F7F7),
        shape: BoxShape.circle
      ),
      child: 
      IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Color(0xff4DB5EF),),)
     )
      ],
    );
  }
}