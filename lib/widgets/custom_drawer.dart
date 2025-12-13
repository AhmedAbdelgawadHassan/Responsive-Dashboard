import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer_items_listView.dart';
import 'package:responsive_dashboard/widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListtile(
              image: AppImages.imagesAvatar3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(child: Gap(10)),
          DrawerItemsListview(),  // Sliver List ALready
        SliverFillRemaining(
          hasScrollBody: false, 
          child: Column(
            children: [
              Expanded(child: SizedBox()),  // عادي استخدم Expanded داخل SliverFillRemaining
                DrawerItem(
            drawerItemModel: DrawerItemModel(
              image: AppImages.imagesSettings,
               title: 'System Settings'),
            isActive: false,
          ),
           DrawerItem(
            drawerItemModel: DrawerItemModel(
              image: AppImages.imagesLogout,
               title: 'Logout Account'),
            isActive: false,
          ),
          Gap(48)
            ],
          ),
        )
        ],
      ),
    );
  }
}
