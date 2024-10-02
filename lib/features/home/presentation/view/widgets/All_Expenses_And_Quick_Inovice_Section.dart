import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/all_expenses.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/quick_inovice.dart';

class AllExpensesAndQuickInoviceSection extends StatelessWidget {
  const AllExpensesAndQuickInoviceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInovice(),
      ],
    );
  }
}
