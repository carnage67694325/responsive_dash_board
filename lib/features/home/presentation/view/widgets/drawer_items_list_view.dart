import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/data/model/drawer_item_model.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/drawer_item.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({
    super.key,
    required this.draweritems,
  });

  final List<DrawerItemModel> draweritems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: draweritems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(drawerItemModel: draweritems[index]),
        );
      },
    );
  }
}
