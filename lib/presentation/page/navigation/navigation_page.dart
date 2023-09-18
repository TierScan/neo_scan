import 'package:flutter/material.dart';
import 'package:neo_scan/core/export/package_export.dart';
import 'package:neo_scan/presentation/page/navigation/plataform/navigation_desktop.dart';
import 'package:neo_scan/presentation/page/navigation/plataform/navigation_landscape_mobile.dart';
import 'package:neo_scan/presentation/page/navigation/plataform/navigation_portrait_mobile.dart';
import 'package:neo_scan/presentation/page/navigation/plataform/navigation_tablet.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      desktop: (_) => const NavigationDesktop(),
      tablet: (_) => const NavigationTablet(),
      mobile: (_) => OrientationLayoutBuilder(
        mode: OrientationLayoutBuilderMode.auto,
        landscape: (context) => const NavigationLandscapeMobile(),
        portrait: (context) => const NavigationPortraitMobile(),
      ),
    );
  }
}
