import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widget/custom_drawer.dart';

import 'mobile_layout_widget.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 32),
          Expanded(
            flex: 2,
            child: MobileLayout(),
          ),
          SizedBox(
            width: 32,
          )
        ],
      ),
    );
  }
}
