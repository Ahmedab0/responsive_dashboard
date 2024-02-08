import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getTouchData()));
  }

  PieChartData getTouchData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          setState(() {
            activeIndex =
                pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sectionsSpace: 0.0,
      sections: [
        // Design service
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.4 : null,
          title: activeIndex == 0 ? 'Design service' : '40%',
          titleStyle: AppStyles.medium16(context)
              .copyWith(color: activeIndex == 0 ? null : Colors.white),
          value: 40,
          color: const Color(0xff208CC8),
          showTitle: true,
          radius: activeIndex == 0 ? 60 : 50,
        ),
        // Design product
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.1 : null,
          title: activeIndex == 1 ? 'Design product' : '25%',
          titleStyle: AppStyles.medium16(context)
              .copyWith(color: activeIndex == 1 ? null : Colors.white),
          value: 25,
          color: const Color(0xff4EB7F2),
          showTitle: true,
          radius: activeIndex == 1 ? 60 : 50,
        ),
        // product royalti
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
          title: activeIndex == 2 ? 'product royalti' : '20%',
          titleStyle: AppStyles.medium16(context)
              .copyWith(color: activeIndex == 2 ? null : Colors.white),
          value: 20,
          color: const Color(0xff064061),
          showTitle: true,
          radius: activeIndex == 2 ? 60 : 50,
        ),
        // Other
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          title: activeIndex == 3 ? 'Other' : '22%',
          titleStyle: AppStyles.medium16(context)
              .copyWith(color: activeIndex == 3 ? null : Colors.white),
          value: 22,
          color: const Color(0xffE2DECD),
          showTitle: true,
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
