import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpenseItemHeader extends StatelessWidget {
  const AllExpenseItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.backgroundColor,
  });
  final String image;
  final Color? imageColor, backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: backgroundColor ?? const Color(0xfffafafa),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(image,
                      colorFilter: ColorFilter.mode(
                          imageColor ?? const Color(0xff4EB7F2),
                          BlendMode.srcIn)),
                ),
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor ?? Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
