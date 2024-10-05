import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/features/home/data/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/all_expense_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.expensesItemModel, required this.isSelected});
  final AllExpensesItemModel expensesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      padding: isSelected
          ? const EdgeInsets.symmetric(horizontal: 20, vertical: 20)
          : const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF4DB7F2) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? const Color(0xFF4DB7F2) : const Color(0xFFF1F1F1),
          width: 1,
        ),
      ),
      child: isSelected
          ? ActiveAllExpensesItem(expensesItemModel: expensesItemModel)
          : InactiveAllExpensesItem(expensesItemModel: expensesItemModel),
    );
  }
}

class InactiveAllExpensesItem extends StatelessWidget {
  const InactiveAllExpensesItem({
    super.key,
    required this.expensesItemModel,
  });

  final AllExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AllExpenseItemHeader(
          image: expensesItemModel.image,
        ),
        const SizedBox(height: 34),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            expensesItemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
        ),
        const SizedBox(height: 8),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            expensesItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
        ),
        const SizedBox(height: 16),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            expensesItemModel.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        )
      ],
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.expensesItemModel,
  });

  final AllExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AllExpenseItemHeader(
          backgroundColor: Colors.white.withOpacity(0.1),
          imageColor: Colors.white,
          image: expensesItemModel.image,
        ),
        const SizedBox(height: 34),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            expensesItemModel.title,
            style:
                AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(height: 8),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            expensesItemModel.date,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: const Color(0xFFFAFAFA)),
          ),
        ),
        const SizedBox(height: 16),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            expensesItemModel.price,
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
