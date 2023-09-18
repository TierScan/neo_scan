import 'package:flutter/material.dart';
import 'package:neo_scan/core/export/theme_export.dart';

class LibraryPortraitMobile extends StatefulWidget {
  const LibraryPortraitMobile({super.key});

  @override
  State<LibraryPortraitMobile> createState() => _LibraryPortraitMobileState();
}

class _LibraryPortraitMobileState extends State<LibraryPortraitMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.colorBack,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Text(
          'Library Page',
          style: TextStyle(
            color: ColorTheme.colorMain,
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}