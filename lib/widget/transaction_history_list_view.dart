import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/model/transaction_model.dart';

import 'transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionModel> items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        amount: 20.129,
        isWithDrawal: WithDrawal.debit,
        date: null),
    TransactionModel(
        title: 'Landing Page project',
        date: null,
        amount: 2.129,
        isWithDrawal: WithDrawal.deposit),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: null,
        amount: 20.129,
        isWithDrawal: WithDrawal.deposit),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
  }
}
