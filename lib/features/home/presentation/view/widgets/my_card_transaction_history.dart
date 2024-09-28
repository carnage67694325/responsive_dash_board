import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_contianer.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/my_card_section.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/transaction_history.dart';

class MyCardTransactionHistory extends StatelessWidget {
  const MyCardTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(height: 40, color: Color(0xffF1F1F1)),
          TransactionHistory(),
        ],
      ),
    );
  }
}
