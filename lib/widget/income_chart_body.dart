import 'package:flutter/material.dart';

import '../utils/size_config.dart';
import 'detailed_income_chart.dart';
import 'income_chart.dart';
import 'income_details_list_view.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;

    return screenWidth >= SizeConfig.desktopBreakPoint && screenWidth < 1860
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(width: 20),
              Expanded(
                flex: 2,
                child: IncomeDetailsListView(),
              )
            ],
          );
  }
}
