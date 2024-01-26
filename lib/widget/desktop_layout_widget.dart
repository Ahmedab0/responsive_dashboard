import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widget/mobile_layout_widget.dart';

import 'custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      //drawer: const CustomDrawer(),
      body: Row(
        children: [
          // Custom Drawer
          const Expanded(
            flex: 3,
            child: CustomDrawer(),
          ),
          const SizedBox(
            width: 32,
          ),
          // MobileLayout
          const Expanded(
            flex: 5,
            child: MobileLayout(),
          ),
          const SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.blue,
              child: const Center(
                child: Text('Desktop'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
