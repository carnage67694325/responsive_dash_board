import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_contianer.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
            titlePositionPercentageOffset: activeChartIndex == 0 ? 1.5 : null,
            title: activeChartIndex == 0 ? 'Design service' : '40%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(
                color: activeChartIndex == 0 ? Colors.black : Colors.white),
            value: 40,
            showTitle: true,
            radius: activeChartIndex == 0 ? 50 : 40,
            color: const Color(0xFF208BC7),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeChartIndex == 1 ? 1.5 : null,
            title: activeChartIndex == 1 ? 'Design product' : '25%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(
                color: activeChartIndex == 1 ? Colors.black : Colors.white),
            value: 25,
            showTitle: true,
            radius: activeChartIndex == 1 ? 50 : 40,
            color: const Color(0xFF4DB7F2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeChartIndex == 2 ? 1.5 : null,
            title: activeChartIndex == 2 ? 'Product royalti' : '20%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(
                color: activeChartIndex == 2 ? Colors.black : Colors.white),
            value: 20,
            showTitle: true,
            radius: activeChartIndex == 2 ? 50 : 40,
            color: const Color(0xFF064060),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeChartIndex == 3 ? 1.5 : null,
            title: activeChartIndex == 3 ? 'Other' : '22%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(
                color: activeChartIndex == 3 ? Colors.black : Colors.white),
            value: 22,
            showTitle: true,
            radius: activeChartIndex == 3 ? 50 : 40,
            color: const Color(0xFFE2DECD),
          ),
        ]);
  }
}
