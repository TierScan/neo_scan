import 'package:flutter/material.dart';
import 'package:neo_scan/core/const.dart';
import 'package:neo_scan/core/export/theme_export.dart';
import 'package:neo_scan/presentation/page/detail/detail_page.dart';

class HomeLandscapeMobile extends StatelessWidget {
  const HomeLandscapeMobile({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ColorTheme.colorBack,
      body: Row(
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Home',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'subTitle',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),

                        const Spacer(),

                        //
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          width: 320.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(14.0),
                              bottomLeft: Radius.circular(14.0),
                            ),
                            color: ColorTheme.colorInto,
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.white54,
                              ),
                              SizedBox(width: 12.0),
                              Text(
                                'Search menu here...',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 24.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 45.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            color: ColorTheme.colorMain,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(14.0),
                              bottomRight: Radius.circular(14.0),
                            ),
                          ),
                          child: const Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.white,
                            ),
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
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5, crossAxisSpacing: 16.0, mainAxisSpacing: 16.0, childAspectRatio: 0.65),
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
