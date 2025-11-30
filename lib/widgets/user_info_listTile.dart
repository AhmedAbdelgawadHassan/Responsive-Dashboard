import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';

class UserInfoListtile extends StatelessWidget {
  const UserInfoListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(Assets.imagesAvatar1),
      title: const Text("John Doe",style: TextStyle(color: Colors.amber),),
      subtitle: const Text("ddddd",)
    );
  }
}