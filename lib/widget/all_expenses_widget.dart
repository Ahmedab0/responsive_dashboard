import 'package:flutter/material.dart';
import '../widget/custom_background_container.dart';
import 'all_expenses_header.dart';
import 'expenses_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          ExpensesListView()
        ],
      ),
    );
  }
}
