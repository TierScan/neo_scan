import 'package:flutter/material.dart';
import 'package:neo_scan/core/const.dart';
import 'package:neo_scan/core/export/theme_export.dart';
import 'package:neo_scan/presentation/page/detail/detail_page.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  Widget _topMenu({
    required String title,
    required String subTitle,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subTitle,
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            width: double.infinity,
            height: 42.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
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
        ),
        const SizedBox(width: 6.0),
        Expanded(
          flex: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Container(
              height: 40.0,
              width: MediaQuery.of(context).size.width,
              color: ColorTheme.colorMain,
              child: const Text(
                'Search',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 14.0),
      ],
    );
  }

  Widget _itemTab({
    required IconData icon,
    required String title,
    required bool isActive,
  }) {
    return Container(
      width: 180.0,
      margin: const EdgeInsets.only(right: 26.0),
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 24.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: ColorTheme.colorInto,
        border: isActive
            ? Border.all(
                color: ColorTheme.colorMain,
                width: 4.0,
              )
            : Border.all(
                color: ColorTheme.colorInto,
                width: 4.0,
              ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _item({
    required String img,
    required String title,
    required String price,
    required String item,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: ColorTheme.colorInto,
      ),
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: ColorTheme.colorMain,
            ),
          ),
        ],
      ),
    );
  }

  Widget _search() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      width: double.infinity,
      height: 42.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
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
    );
  }

  Widget _searchA() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      width: double.infinity,
      height: 42.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: ColorTheme.colorInto,
      ),
      child: Row(
        children: [
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: ColorTheme.color5,
              hintText: 'Enter a title',
              prefix: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

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
