import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'drop_down_menu_button.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.semiBold20,
        ),
        DropDownMenue(),
      ],
    );
  }
}
