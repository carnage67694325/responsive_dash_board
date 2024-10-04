import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/income_chart.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;
  @override
  Widget build(BuildContext context) {
    return screenWidth >= SizeConfig.desktop && screenWidth <= 1400
        ? SizedBox()
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: SizedBox(
                  height: screenHeight * 0.25,
                  child:
                      const IncomeChart(), // The chart takes up flexible space
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                flex: 2,
                child: SizedBox(
                  height: screenHeight * 0.25,
                  child:
                      const IncomeDetails(), // The details take up flexible space
                ),
              ),
            ],
          );
  }
}
