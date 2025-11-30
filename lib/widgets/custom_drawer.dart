import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          UserInfoListtile()
        ],
      ),
    );
  }
}