import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/All_Expenses_And_Quick_Inovice_Section.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/income_section.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/my_card_transaction_history.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            AllExpensesAndQuickInoviceSection(),
            SizedBox(height: 25),
            MyCardTransactionHistory(),
            SizedBox(
              height: 24,
            ),
            IncomeSection(),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
