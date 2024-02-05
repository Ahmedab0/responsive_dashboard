import 'package:flutter/material.dart';
import '../model/drawer_item_model.dart';
import '../model/user_info_model.dart';
import '../widget/active_inactive_drawer_item.dart';

import '../utils/app_images.dart';
import 'drawer_item_list_view.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 28, right: 20),
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          /* SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(20),
              height: 53,
              color: const Color(0xFFC4C4C4),
            ),
          ), */

          // UserInfoListTile
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  img: Assets.imagesFrame,
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com'),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 28)),
          // DrawerItemListView
          const DrawerItemListView(),
          // setting section
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
                // InActiveDrawerItem
                InkWell(
                  onTap: () {},
                  child: const InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          img: Assets.imagesSetting2, title: 'Setting system')),
                ),
                // InActiveDrawerItem
                InkWell(
                  onTap: () {},
                  child: const InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          img: Assets.imagesLogout, title: 'Logout account')),
                ),
                const SizedBox(height: 28),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
