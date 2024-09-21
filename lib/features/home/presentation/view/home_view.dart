import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/features/home/presentation/view/layouts/desktop_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayout(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DesktopLayout()),
    );
  }
}
