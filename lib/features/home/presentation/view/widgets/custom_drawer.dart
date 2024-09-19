import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/features/home/data/model/drawer_item_model.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/user_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  final List<DrawerItemModel> draweritems = const [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserListTile(
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
              image: Assets.imagesAvatar3),
          DrawerItemsListView(draweritems: draweritems),
        ],
      ),
    );
  }
}
