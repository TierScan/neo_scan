import 'package:flutter/material.dart';
import 'package:neo_scan/core/export/theme_export.dart';
import 'package:neo_scan/presentation/view/home/home_view.dart';
import 'package:neo_scan/presentation/view/library/library_view.dart';
import 'package:neo_scan/presentation/view/project/project_view.dart';

class NavigationPortraitMobile extends StatefulWidget {
  const NavigationPortraitMobile({super.key});

  @override
  State<NavigationPortraitMobile> createState() => _NavigationPortraitMobileState();
}

class _NavigationPortraitMobileState extends State<NavigationPortraitMobile> {
  String pageActive = 'Home';

  _pageview() {
    switch (pageActive) {
      case 'Home':
        return const HomeView();
      case 'Library':
        return const LibraryView();
      case 'Project':
        return const ProjectView();

      default:
        return const HomeView();
    }
  }

  _setPage(String page) {
    setState(() {
      pageActive = page;
    });
  }

  Widget _sideMenu() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: _logo(
                clrback: ColorTheme.colorMain,
                img: 'assets/img/logo/logo.png',
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: _itemMenu(
                    menu: 'Home',
                    icon: Icons.home_outlined,
                  ),
                ),
                Expanded(
                  child: _itemMenu(
                    menu: 'Library',
                    icon: Icons.wallpaper_outlined,
                  ),
                ),
                Expanded(
                  child: _itemMenu(
                    menu: 'Project',
                    icon: Icons.history_outlined,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _bodyContent() {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 12.0, right: 12.0),
        padding: const EdgeInsets.only(top: 12.0, right: 12.0, left: 12.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
          color: ColorTheme.colorBack,
        ),
        child: _pageview(),
      ),
    );
  }

  Widget _itemMenu({
    required String menu,
    required IconData icon,
  }) {
    return InkWell(
      onTap: () => _setPage(menu),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.symmetric(vertical: 12),
          curve: Curves.slowMiddle,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: pageActive == menu ? ColorTheme.colorMain : Colors.transparent,
          ),
          child: Column(
            children: [
              Icon(
                icon,
                color: pageActive == menu ? Colors.white : Colors.white54,
                size: 28.0,
              ),
              const SizedBox(height: 5),
              Text(
                menu,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _logo({
    required Color clrback,
    required String img,
  }) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: clrback,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.0),
        child: Image(
          height: 45.0,
          width: 45.0,
          image: AssetImage(img),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.colorInto,
      body: Column(
        children: [
          //
          _sideMenu(),

          //
          _bodyContent(),
        ],
      ),
    );
  }
}
