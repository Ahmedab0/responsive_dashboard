import 'package:flutter/material.dart';

import 'income_details.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({
    super.key,
  });

  static const List<Widget> items = [
    IncomeDetails(
        title: 'Design service', amount: '40%', clr: Color(0xff208CC8)),
    IncomeDetails(
        title: 'Design product', amount: '25%', clr: Color(0xff4EB7F2)),
    IncomeDetails(
        title: 'product royalti', amount: '20%', clr: Color(0xff064061)),
    IncomeDetails(title: 'Other', amount: '22%', clr: Color(0xffE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items.map((e) => e).toList(),
    );
  }
}
