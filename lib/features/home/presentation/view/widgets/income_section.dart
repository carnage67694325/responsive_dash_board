import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_contianer.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/income_chart.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/income_details.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return CustomContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min, // Shrink-wraps the content
        children: [
          const IncomeHeader(),
          SizedBox(height: screenHeight * 0.02),
          IncomeSectionBody(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
        ],
      ),
    );
  }
}

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
    log(screenWidth.toString());
    return screenWidth >= 1300 && screenWidth <= 1400
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
