import 'package:flutter/material.dart';
import 'package:neo_scan/core/export/package_export.dart';
import 'package:neo_scan/presentation/page/splash/plataform/splash_desktop.dart';
import 'package:neo_scan/presentation/page/splash/plataform/splash_landscape_mobile.dart';
import 'package:neo_scan/presentation/page/splash/plataform/splash_portrait_mobile.dart';
import 'package:neo_scan/presentation/page/splash/plataform/splash_tablet.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      desktop: (_) => const SplashDesktop(),
      tablet: (_) => const SplashTablet(),
      mobile: (_) => OrientationLayoutBuilder(
        mode: OrientationLayoutBuilderMode.auto,
        landscape: (context) => const SplashLandscapeMobile(),
        portrait: (context) => const SplashPortraitMobile(),
      ),
    );
  }
}
