import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'drop_down_menu_button.dart';

class IncomeHeader extends StatefulWidget {
  const IncomeHeader({super.key});

  @override
  State<IncomeHeader> createState() => _IncomeHeaderState();
}

class _IncomeHeaderState extends State<IncomeHeader> {
  String val = 'Monthly';

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.semiBold20,
        ),
        DropDownMenue(),
      ],
    );
  }
}
