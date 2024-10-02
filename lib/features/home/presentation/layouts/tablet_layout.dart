import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/All_Expenses_And_Quick_Inovice_Section.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/income_section.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/my_card_transaction_history.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
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
            )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
