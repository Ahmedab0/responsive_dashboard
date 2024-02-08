import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

import 'latest_transaction_list_view.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.medium16(context),
        ),
        const SizedBox(height: 12),
        const LatestTransactionListView(),
      ],
    );
  }
}
