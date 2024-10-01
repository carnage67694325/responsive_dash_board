import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_contianer.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeChartIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, PieTouchResponse) {
            activeChartIndex =
                PieTouchResponse?.touchedSection?.touchedSectionIndex ?? 0;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
            value: 40,
            showTitle: false,
            radius: activeChartIndex == 0 ? 50 : 40,
            color: const Color(0xFF208BC7),
          ),
          PieChartSectionData(
            value: 25,
            showTitle: false,
            radius: activeChartIndex == 1 ? 50 : 40,
            color: const Color(0xFF4DB7F2),
          ),
          PieChartSectionData(
            value: 20,
            showTitle: false,
            radius: activeChartIndex == 2 ? 50 : 40,
            color: const Color(0xFF064060),
          ),
          PieChartSectionData(
            value: 22,
            showTitle: false,
            radius: activeChartIndex == 3 ? 50 : 40,
            color: const Color(0xFFE2DECD),
          ),
        ]);
  }
}
