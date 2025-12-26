import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemsListview extends StatefulWidget {
  const DrawerItemsListview({super.key});

  @override
  State<DrawerItemsListview> createState() => _DrawerItemsListviewState();
}

class _DrawerItemsListviewState extends State<DrawerItemsListview> {
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      image: AppImages.imagesDashboard,
       title: 'Dashboard',
       ),
    DrawerItemModel(
      image: AppImages.imagesMyTransctions,
      title: 'My Transactions',
    ),
    DrawerItemModel(image: AppImages.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(
      image: AppImages.imagesWalletAccount,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: AppImages.imagesMyInvestments,
      title: 'My Investments',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index; // Update the selectedIndex when an item is tapped
            });
          },
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: selectedIndex == index, // Check if the current index matches the selected index -->true
            ),
          ),
        );
      },
    );
  }
}
