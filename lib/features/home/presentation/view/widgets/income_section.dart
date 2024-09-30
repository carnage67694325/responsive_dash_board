import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_contianer.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          IncomeHeader(),
        ],
      ),
    );
  }
}
