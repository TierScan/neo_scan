import 'package:flutter/material.dart';
import 'package:neo_scan/core/export/package_export.dart';
import 'package:neo_scan/presentation/view/project/plataform/project_desktop.dart';
import 'package:neo_scan/presentation/view/project/plataform/project_lanscape_mobile.dart';
import 'package:neo_scan/presentation/view/project/plataform/project_portrait_mobile.dart';
import 'package:neo_scan/presentation/view/project/plataform/project_tablet.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      desktop: (_) => const ProjectDesktop(),
      tablet: (_) => const ProjectTablet(),
      mobile:(_)=> OrientationLayoutBuilder(
        mode: OrientationLayoutBuilderMode.auto,
        landscape: (_) => const ProjectLandscapeMobile(),
        portrait: (_) => const ProjectPortraitMobile(),
      ),
    );
  }
}
