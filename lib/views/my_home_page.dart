import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import '../widget/adaptive_layout_widget.dart';
import '../widget/custom_drawer.dart';
import '../widget/desktop_layout_widget.dart';
import '../widget/mobile_layout_widget.dart';
import '../widget/tablet_layout_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      drawer: screenWidth < SizeConfig.tabletBreakPoint
          ? const Drawer(
              child: CustomDrawer(),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      appBar: screenWidth < SizeConfig.tabletBreakPoint
          ? AppBar(
              foregroundColor: Colors.white,
              backgroundColor:
                  const Color(0xFF4DB7F2), //const Color(0xFF064060),
            )
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
