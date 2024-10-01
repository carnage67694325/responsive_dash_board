import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/features/home/data/model/item_details_model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsmModel});
  final ItemDetailsmModel itemDetailsmModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsmModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsmModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsmModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
