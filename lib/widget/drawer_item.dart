import 'package:flutter/material.dart';
import '../model/drawer_item_model.dart';
import 'active_inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveDrawerItem(drawerItemModel: drawerItemModel),
      secondChild: InActiveDrawerItem(drawerItemModel: drawerItemModel),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 300),
    );
    //isActive
    // ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
    // : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}



/*
ListTile(
      leading: SvgPicture.asset(drawerItemModel.img),
      title: Text(
        drawerItemModel.title,
        style: isActive ? AppStyles.bold16 : AppStyles.regular16,
      ),
      trailing: isActive
          ? Container(
              width: 3.27,
              decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
            )
          : null,
    );
*/