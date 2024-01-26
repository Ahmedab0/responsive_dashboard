import 'package:flutter/material.dart';
import '../widget/adaptive_layout_widget.dart';
import '../widget/desktop_layout_widget.dart';
import '../widget/mobile_layout_widget.dart';
import '../widget/tablet_layout_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
