import 'package:flutter/material.dart';
import '../widget/active_inactive_expenses_card.dart';

import '../model/expenses_item_model.dart';

class ExpensesCard extends StatelessWidget {
  const ExpensesCard(
      {super.key, required this.expensesItemModel, required this.isActive});

  final ExpensesItemModel expensesItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 500),
      //firstCurve: Curves.easeIn,
      //secondCurve: Curves.easeOut,
      firstChild: ActiveExpensesCard(expensesItemModel: expensesItemModel),
      secondChild: InActiveExpensesCard(expensesItemModel: expensesItemModel),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );

    //isActive
    // ? ActiveExpensesCard(expensesItemModel: expensesItemModel)
    // : InActiveExpensesCard(expensesItemModel: expensesItemModel);
  }
}
