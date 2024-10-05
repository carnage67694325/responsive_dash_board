import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/features/home/data/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(0);
          },
          child: AllExpensesItem(
              isSelected: selectedIndex == 0, expensesItemModel: items[0]),
        )),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(1);
          },
          child: AllExpensesItem(
              isSelected: selectedIndex == 1, expensesItemModel: items[1]),
        )),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(2);
          },
          child: AllExpensesItem(
              isSelected: selectedIndex == 2, expensesItemModel: items[2]),
        )),
      ],
    );
    // return Row(
    //     children: items.asMap().entries.map((e) {
    //   int index = e.key;
    //   var item = e.value;
    //   return Expanded(
    //       child: GestureDetector(
    //     onTap: () {
    //       updateIndex(index);
    //     },
    //     child: Padding(
    //       padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //       child: AllExpensesItem(
    //           isSelected: selectedIndex == index, expensesItemModel: item),
    //     ),
    //   ));
    // }).toList());
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
