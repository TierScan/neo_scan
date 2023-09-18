import 'package:flutter/material.dart';
import 'package:neo_scan/core/export/package_export.dart';
import 'package:neo_scan/presentation/view/home/plataform/home_desktop.dart';
import 'package:neo_scan/presentation/view/home/plataform/home_landscape_mobile.dart';
import 'package:neo_scan/presentation/view/home/plataform/home_portrait_mobile.dart';
import 'package:neo_scan/presentation/view/home/plataform/home_tablet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      desktop: (context) => const HomeDesktop(),
      tablet: (context) => const HomeTablet(),
      mobile: (context) => OrientationLayoutBuilder(
        mode: OrientationLayoutBuilderMode.auto,
        landscape: (context) => const HomeLandscapeMobile(),
        portrait: (context) => HomePortraitMobile(),
      ),
    );
  }
}
