import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widget/custom_background_container.dart';
import 'package:responsive_admin_dashboard/widget/income_header.dart';

import 'income_chart.dart';
import 'income_details.dart';
import 'income_details_list_view.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(width: 20),
              Expanded(
                flex: 2,
                child: IncomeDetailsListView(),
              )
            ],
          )
        ],
      ),
    );
  }
}
