import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/features/home/data/model/user_info_model.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({super.key, required this.user});
  final UserInfoModel user;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(user.image),
          title: Text(
            user.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            user.subtitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
