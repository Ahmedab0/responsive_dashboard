import 'dart:developer';

import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      ///
      log('Layout width ${constrains.maxWidth}');
      log('MediaQuery width ${MediaQuery.sizeOf(context).width}');

      if (constrains.maxWidth < 800) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < 1600) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
