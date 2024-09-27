import 'package:flutter/material.dart';

import 'package:responsive_dash_board/features/home/data/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/all_expense_header.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/all_expenses_item.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/all_expenses_item_list_view.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_contianer.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExpenseHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
