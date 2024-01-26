import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/model/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/utils/app_images.dart';
import 'package:responsive_admin_dashboard/widget/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int selectedIndex = 0;

  final List<DrawerItemModel> items = const [
    DrawerItemModel(img: Assets.imagesCategory2, title: 'Dashboard'),
    DrawerItemModel(img: Assets.imagesConvertCard, title: 'My Transaction'),
    DrawerItemModel(img: Assets.imagesGraph, title: 'Statistics'),
    DrawerItemModel(img: Assets.imagesWallet2, title: 'Wallet Account'),
    DrawerItemModel(img: Assets.imagesChart2, title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => InkWell(
              onTap: () {
                if (selectedIndex != index) {
                  setState(() {
                    selectedIndex = index;
                  });
                  log('selectedIndex : $selectedIndex');
                }
              },
              child: DrawerItem(
                drawerItemModel: items[index],
                isActive: selectedIndex == index,
              ),
            ));
  }
}
