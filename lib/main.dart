import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/view/home_view.dart';

void main() {
  runApp(const ResponsiveDashBoardApp());
}

class ResponsiveDashBoardApp extends StatelessWidget {
  const ResponsiveDashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
