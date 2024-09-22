import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/features/home/data/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/all_expense_header.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/all_expenses_item.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/all_expenses_item_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpenseHeader(),
          SizedBox(
            height: 48,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
