import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class DropDownMenue extends StatelessWidget {
  const DropDownMenue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFF1F1F1))),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Monthly',
            style: AppStyles.medium16,
          ),
          SizedBox(
            width: 18,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xff064061),
            size: 24,
          ),
        ],
      ),
    );
  }
}
