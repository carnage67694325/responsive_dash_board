import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/all_expenses.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_drawer.dart';

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
            child: Column(
              children: [AllExpenses()],
            )),
      ],
    );
  }
}
