import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/features/home/data/model/drawer_item_model.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/drawer_item.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/user_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserListTile(
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
                image: Assets.imagesAvatar3),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height : 20)),
                InactiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Settings', image: Assets.imagesSettings)),
                InactiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout', image: Assets.imagesLogout)),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
