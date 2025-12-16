import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_listTile.dart';

class LatestTransactionsListview extends StatelessWidget {
 const  LatestTransactionsListview({super.key});
  static  List<UserInfoModel> userInfoitems=[
UserInfoModel(title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail', image: AppImages.imagesAvatar1),
UserInfoModel(title: 'Josua Nunito', subtitle: 'Josh Nunito@gmail.com', image: AppImages.imagesAvatar2),
UserInfoModel(title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail', image: AppImages.imagesAvatar3),
  ];
  

  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
     child: Row(
      children:userInfoitems.map((e) {
        return IntrinsicWidth(
          child: UserInfoListtile(userInfoModel: e),
        );
      },
     ).toList()),
   );


   // another solution with ListView.builder
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: userInfoitems.length,
    //     itemBuilder:(context, index) {
    //       return IntrinsicWidth( // to make sure each item takes only the necessary width (Responsive design)
    //         child: UserInfoListtile(userInfoModel: userInfoitems[index])) ;
    //     }, ),
  }
}