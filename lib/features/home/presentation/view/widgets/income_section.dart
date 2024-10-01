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
          SizedBox(
            height: 18,
          ), // Responsive vertical spacing
          // Use a Container or SizedBox with responsive width/height
          Row(
            children: [
              Flexible(
                flex: 1,
                child: SizedBox(
                  height: screenHeight *
                      0.25, // 25% of the screen height for the chart
                  child:
                      const IncomeChart(), // The chart takes up flexible space
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Flexible(
                flex: 2,
                child: SizedBox(
                  height: screenHeight *
                      0.25, // 25% of the screen height for the chart
                  child:
                      const IncomeDetails(), // The details take up flexible space
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
