import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

import 'transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryTitle(),
        const SizedBox(height: 20),
        Text(
          DateFormat.yMMMd().format(DateTime.now()),
          style: AppStyles.regular14(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        const SizedBox(height: 16),
        const TransactionHistoryListView()
      ],
    );
  }
}

// Build TransactionHistoryTitle Widget
class TransactionHistoryTitle extends StatelessWidget {
  const TransactionHistoryTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Transaction Header
        Text(
          'Transaction History',
          style: AppStyles.semiBold20(context),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'See all',
              style: AppStyles.medium16(context)
                  .copyWith(color: const Color(0xff4EB7F2)),
            ))
      ],
    );
  }
}
