import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpenseItemHeader extends StatelessWidget {
  const AllExpenseItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(14),
          decoration: const ShapeDecoration(
            color: Color(0xfffafafa),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(image),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
