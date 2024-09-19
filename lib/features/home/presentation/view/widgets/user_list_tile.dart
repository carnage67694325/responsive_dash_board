import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class UserListTile extends StatelessWidget {
  const UserListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});
  final String title, subtitle, image;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
