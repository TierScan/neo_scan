import 'package:flutter/material.dart';
import 'package:neo_scan/core/export/package_export.dart';
import 'package:neo_scan/presentation/view/library/plataform/library_desktop.dart';
import 'package:neo_scan/presentation/view/library/plataform/library_landscape_mobile.dart';
import 'package:neo_scan/presentation/view/library/plataform/library_portrait_mobile.dart';
import 'package:neo_scan/presentation/view/library/plataform/library_tablet.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      desktop: (_) => const LibraryDesktop(),
      tablet: (_) => const LibraryTablet(),
      mobile: (_) => OrientationLayoutBuilder(
        mode: OrientationLayoutBuilderMode.auto,
        landscape: (context) => const LibraryLandscapeMobile(),
        portrait: (context) => const LibraryPortraitMobile(),
      ),
    );
  }
}
