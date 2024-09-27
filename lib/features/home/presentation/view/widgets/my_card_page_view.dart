import 'package:flutter/material.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/my_card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return const MyCard();
      },
    );
  }
}
