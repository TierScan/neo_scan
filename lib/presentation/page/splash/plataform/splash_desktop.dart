import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neo_scan/core/export/theme_export.dart';
import 'package:neo_scan/presentation/page/navigation/navigation_page.dart';

class SplashDesktop extends StatefulWidget {
  const SplashDesktop({super.key});

  @override
  State<SplashDesktop> createState() => _SplashDesktopState();
}

class _SplashDesktopState extends State<SplashDesktop> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const NavigationPage()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.colorBack,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                color: ColorTheme.colorMain,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: const Image(
                    image: AssetImage(
                      'assets/img/logo/logo.png',
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'Tier Scan',
              style: TextStyle(
                color: ColorTheme.colorMain,
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}