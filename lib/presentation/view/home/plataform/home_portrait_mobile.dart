import 'package:flutter/material.dart';
import 'package:neo_scan/core/const.dart';
import 'package:neo_scan/core/export/theme_export.dart';
import 'package:neo_scan/presentation/page/detail/detail_page.dart';

class HomePortraitMobile extends StatelessWidget {
  HomePortraitMobile({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: ColorTheme.colorBack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //  Body
          Expanded(
            flex: 14,
            child: Column(
              children: [
                //
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //
                        const Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '/',
                          style: TextStyle(
                            color: ColorTheme.colorMain,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'subTitle',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //
                Expanded(
                  flex: 9,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GridView.builder(
                      itemCount: allMangas.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: 0.65,
                      ),
                      itemBuilder: (context, index) {
                        final item = allMangas[index];

                        return InkWell(
                          onTap: () => Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (_, __, ___) => DetailPage(manga: item),
                              transitionDuration: const Duration(seconds: 1),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: GridTile(
                              footer: GridTileBar(
                                title: Text(
                                  item.title,
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                backgroundColor: Colors.black45,
                              ),
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(item.img),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          //  Banner de Publicidad
          const Expanded(
            flex: 3,
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}
