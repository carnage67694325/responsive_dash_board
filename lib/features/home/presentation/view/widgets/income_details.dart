import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/data/model/item_details_model.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  final List<ItemDetailsmModel> items = const [
    ItemDetailsmModel(
        color: Color(0xFF208BC7), title: 'Design service', value: '%40'),
    ItemDetailsmModel(
        color: Color(0xFF4DB7F2), title: 'Design product', value: '%25'),
    ItemDetailsmModel(
        color: Color(0xFF064060), title: 'Product royalti', value: '%20'),
    ItemDetailsmModel(color: Color(0xFFE2DECD), title: 'Other', value: '%22')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemDetails(itemDetailsmModel: items[index]);
      },
    );
  }
}
