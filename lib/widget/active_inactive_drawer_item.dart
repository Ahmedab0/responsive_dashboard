import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../model/drawer_item_model.dart';
import '../utils/app_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(bottom: 20),
      leading: SvgPicture.asset(drawerItemModel.img),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.bold16(context),
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(bottom: 20),
      leading: SvgPicture.asset(drawerItemModel.img),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.regular16(context),
      ),
    );
  }
}
