import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_button.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_title_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitleField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitleField(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomTitleField(
                title: 'item name',
                hint: 'Type item name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitleField(
                title: 'Item mount',
                hint: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                textColor: Color(0xff4EB7F2),
                buttonColor: Color(0xffFFFFFF),
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(child: CustomButton(text: 'Send Money')),
          ],
        )
      ],
    );
  }
}
