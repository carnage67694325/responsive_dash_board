import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/my_card_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        const MyCardPageView(),
        const SizedBox(
          height: 19,
        ),
        const DotsIndicator(),
      ],
    );
  }
}
