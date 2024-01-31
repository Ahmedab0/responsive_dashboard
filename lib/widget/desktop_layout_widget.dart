import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widget/custom_background_container.dart';
import '../widget/my_card.dart';
import '../widget/mobile_layout_widget.dart';

import 'cards_page_views.dart';
import 'custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      //drawer: const CustomDrawer(),
      body: Row(
        children: [
          // Custom Drawer
          Expanded(
            flex: 3,
            child: CustomDrawer(),
          ),
          SizedBox(
            width: 32,
          ),
          // MobileLayout
          Expanded(
            flex: 5,
            child: MobileLayout(),
          ),
          SizedBox(
            width: 24,
          ),
          //
          Expanded(
            flex: 4,
            child:
                CustomBackgroundContainer(padding: 24, child: CardPageView()),
          ),
        ],
      ),
    );
  }
}
