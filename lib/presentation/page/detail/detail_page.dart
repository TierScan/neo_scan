import 'package:flutter/material.dart';
import 'package:neo_scan/core/export/package_export.dart';
import 'package:neo_scan/data/models/manga_model.dart';
import 'package:neo_scan/presentation/page/detail/plataform/detail_desktop.dart';
import 'package:neo_scan/presentation/page/detail/plataform/detail_landscape_mobile.dart';
import 'package:neo_scan/presentation/page/detail/plataform/detail_portrait_mobile.dart';
import 'package:neo_scan/presentation/page/detail/plataform/detail_tablet.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.manga,
  });

  final MangaModel manga;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      desktop: (_) => DetailDesktop(manga: manga),
      tablet: (_) => DetailTablet(manga: manga),
      mobile: (_) => OrientationLayoutBuilder(
        mode: OrientationLayoutBuilderMode.portrait,
        landscape: (context) => DetailLandscapeMobile(manga: manga),
        portrait: (context) => DetailPortraitMobile(manga: manga),
      ),
    );
  }
}
