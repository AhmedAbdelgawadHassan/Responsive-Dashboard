import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
            aspectRatio: 420 / 215, // Original Width and Height for the card
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0XFF5EBCF0),
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(AppImages.imagesCardBackground),   // Use PNG image because there is an problem with SVG image
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('Name Card',style: AppStyles.styleMedium16(context).copyWith(color: Colors.white),),
                           Gap(5),
                      Text('Syah Bandi',style: AppStyles.styleMedium20(context),)
                        ],
                      ),
                      Spacer(),
                 Padding(
                        padding: const EdgeInsets.only(right: 10),
                  child:SvgPicture.asset(AppImages.imagesGallery,fit: BoxFit.fill,))
                    ],
                  ),
                  Spacer(), // to still push the card number and expiry date to the bottom if the width or height changes
                  Text('0918 8124 0042 8129',style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),),
                  Gap(5),
                  Text('12/20 - 124',style: AppStyles.styleMedium16(context).copyWith(color: Colors.white),),
                  // Flexible(child: Gap(20))
                ],
              ),
            ),
          );
  }
}