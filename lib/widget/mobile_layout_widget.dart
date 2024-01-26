import 'package:flutter/material.dart';
import '../widget/all_expenses_widget.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40.0),
      child: Column(
        children: [
          // All Expenses
          AllExpenses(),
        ],
      ),
    );
  }
}
