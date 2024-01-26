import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widget/active_inactive_expenses_card.dart';

import '../model/expenses_item_model.dart';

class ExpensesCard extends StatelessWidget {
  const ExpensesCard(
      {super.key, required this.expensesItemModel, required this.isActive});

  final ExpensesItemModel expensesItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpensesCard(expensesItemModel: expensesItemModel)
        : InActiveExpensesCard(expensesItemModel: expensesItemModel);
  }
}
