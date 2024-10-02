import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/features/home/presentation/layouts/desktop_layout.dart';
import 'package:responsive_dash_board/features/home/presentation/layouts/mobile_layout.dart';
import 'package:responsive_dash_board/features/home/presentation/layouts/tablet_layout.dart';
import 'package:responsive_dash_board/features/home/presentation/view/widgets/custom_drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      appBar: MediaQuery.of(context).size.width < 800
          // ignore: prefer_const_constructors
          ? AppBar(
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
              backgroundColor: const Color(0xfff7f9fa),
            )
          : null,
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DesktopLayout()),
    );
  }
}
