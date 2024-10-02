import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/All_Expenses_And_Quick_Inovice_Section.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/all_expenses.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/income_section.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/my_card.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/my_card_page_view.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/my_card_section.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/my_card_transaction_history.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/quick_inovice.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/transaction_history.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: AllExpensesAndQuickInoviceSection(),
              ),
            )),
        SizedBox(
          width: 24,
        ),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              MyCardTransactionHistory(),
              SizedBox(
                height: 24,
              ),
              IncomeSection(),
              SizedBox(
                height: 40,
              )
            ],
          ),
        )),
      ],
    );
  }
}
