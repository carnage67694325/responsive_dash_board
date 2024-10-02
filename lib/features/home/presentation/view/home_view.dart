import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/features/home/presentation/layouts/desktop_layout.dart';
import 'package:responsive_dash_board/features/home/presentation/layouts/mobile_layout.dart';
import 'package:responsive_dash_board/features/home/presentation/layouts/tablet_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DesktopLayout()),
    );
  }
}
