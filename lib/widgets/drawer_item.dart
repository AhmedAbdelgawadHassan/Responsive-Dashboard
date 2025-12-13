import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/active_and_inActive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive    // Check if the current index matches the selected index :-->true->ActiveDrawerItem -->false->InActiveDrawerItem
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)    
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
