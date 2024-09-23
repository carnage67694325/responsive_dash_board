import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/features/home/data/model/user_info_model.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/user_list_tile.dart';

class LatestTransactinoListView extends StatelessWidget {
  const LatestTransactinoListView({super.key});
  final List<UserInfoModel> users = const [
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: 'Josua Nunito',
        subtitle: 'JoshNunito@gmail.com',
        image: Assets.imagesAvatar2),
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar3),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(child: UserListTile(user: users[index]));
        },
      ),
    );
  }
}
