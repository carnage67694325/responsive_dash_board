import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_contianer.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_text_field.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_title_field.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/latest_transactino_list_view.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/quick_inovice_header.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/quick_invoice_form.dart';

class QuickInovice extends StatelessWidget {
  const QuickInovice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
      children: [
        QuickInoviceHeader(),
        SizedBox(
          height: 24,
        ),
        LatestTransaction(),
        Divider(
          height: 48,
        ),
        QuickInvoiceForm(),
      ],
    ));
  }
}
