import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_contianer.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/income_chart.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/income_details.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/income_header.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/income_section_body.dart';

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
