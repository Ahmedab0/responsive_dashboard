import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Quick Invoice',
          style: AppStyles.semiBold20,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 48,
            height: 48,
            decoration: const ShapeDecoration(
              shape: OvalBorder(),
              color: Color(0xFFFAFAFA),
            ),
            child: const Icon(
              Icons.add,
              color: Color(0xff4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
