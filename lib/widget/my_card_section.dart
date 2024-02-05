import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

import 'cards_page_views.dart';
import 'custom_dot_indicator.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pagecontroller;
  int currentPageIndex = 0;

  @override
  void initState() {
    pagecontroller = PageController();
    // addListener

    pagecontroller.addListener(() {
      setState(() {
        currentPageIndex = pagecontroller.page!.round();
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My card',
          style: AppStyles.semiBold20,
        ),
        const SizedBox(height: 20),
        CardPageView(pageController: pagecontroller),
        const SizedBox(height: 20),
        DotIndicator(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
