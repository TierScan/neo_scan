import 'package:flutter/material.dart';
import 'package:neo_scan/core/export/package_export.dart';
import 'package:neo_scan/core/export/theme_export.dart';
import 'package:neo_scan/core/export/widget_export.dart';
import 'package:neo_scan/data/models/manga_model.dart';
import 'package:neo_scan/presentation/widget/down_button_widget.dart';

class DetailDesktop extends StatelessWidget {
  const DetailDesktop({super.key, required this.manga});

  final MangaModel manga;

  //  Link Downloader
  launchURL({required String url}) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'No se puede abrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTheme.colorInto,
        title: Text(manga.title),
        elevation: 0.0,
      ),
      backgroundColor: ColorTheme.colorBack,
      body: SafeArea(
        child: Row(
          children: [
            //  Portada Manga
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  //  Text Titulo
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(12.0),
                    margin: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: ColorTheme.colorInto,
                    ),
                    child: Text(
                      manga.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  //  Image Portada
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(12.0),
                    margin: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: ColorTheme.colorInto,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: Image(
                        image: AssetImage(
                          manga.img,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //  Datos del Manga
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(6.0),
                margin: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    //  Infromación del Manga
                    infoManga(context),

                    //  Enlaces del Descarga
                    //buttonUrlDown(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //
  Expanded infoManga(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Row(
        children: [
          //  Información
          Expanded(
            flex: 4,
            child: Row(
              children: [
                //  INFO
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: ColorTheme.colorInto,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Nombre Ingles:',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white70,
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                manga.alternativeEN,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        //
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: ColorTheme.colorInto,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Nombre Japones:',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white70,
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                manga.alternativeJP,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        //
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: ColorTheme.colorInto,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Parodies:',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white70,
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                manga.parodies,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        //
                        Row(
                          children: [
                            //
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                                padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: ColorTheme.colorInto,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Artista:',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    const SizedBox(height: 4.0),
                                    Text(
                                      manga.artists,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            //
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                                padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: ColorTheme.colorInto,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Autor:',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    const SizedBox(height: 4.0),
                                    Text(
                                      manga.author,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            //
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                                padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: ColorTheme.colorInto,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Grupo:',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    const SizedBox(height: 4.0),
                                    Text(
                                      manga.groups,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        //
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: ColorTheme.colorInto,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Categories:',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white70,
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              Wrap(
                                spacing: 8.0,
                                runSpacing: 4.0,
                                children: manga.categories
                                    .map(
                                      (category) => Chip(label: Text(category.title)),
                                    )
                                    .toList(),
                              ),
                            ],
                          ),
                        ),

                        //
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: ColorTheme.colorInto,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Content:',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white70,
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              Wrap(
                                spacing: 8.0,
                                runSpacing: 4.0,
                                children: manga.content
                                    .map(
                                      (content) => Chip(label: Text(content.title)),
                                    )
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //  Lista de Capitulos
                Expanded(
                  flex: 2,
                  child: ListView.builder(
                    itemCount: manga.listChapter.length,
                    itemBuilder: (context, index) {
                      final item = manga.listChapter[index];

                      return Container(
                        height: 240.0,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: ColorTheme.colorInto,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image(
                                  width: MediaQuery.of(context).size.width,
                                  image: AssetImage(item.img),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Column(
                                children: [
                                  const SizedBox(height: 4.0),
                                  Text(
                                    item.title,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 6.0),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: downButton(
                                      tap: () => launchURL(url: item.downMega),
                                      color: Colors.red,
                                      title: 'MEGA',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: downButton(
                                      tap: () => launchURL(url: item.downMedia),
                                      color: Colors.blue,
                                      title: 'MediaFire',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: downButton(
                                      tap: () => launchURL(url: item.downZippy),
                                      color: Colors.orange,
                                      title: 'ZippyShare',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: downButton(
                                      tap: () => launchURL(url: item.downTorre),
                                      color: Colors.green,
                                      title: 'Torrent',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          //  Publicidad
          const Expanded(
            flex: 1,
            child: Placeholder(),
          ),
        ],
      ),
    );
  }

  //
  Expanded buttonUrlDown(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          //  Ttitle
          Expanded(
            flex: 2,
            child: titleBarra(
              color: ColorTheme.colorMain,
              text: 'Enlaces Descarga',
              height: MediaQuery.of(context).size.height,
              size: 18.0,
            ),
          ),

          //  Enlace Descarga
          Expanded(
            flex: 4,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /*
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: downButton(
                    tap: () => launchURL(url: manga.downMega),
                    color: Colors.red,
                    title: 'MEGA',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: downButton(
                    tap: () => launchURL(url: manga.downMedia),
                    color: Colors.blue,
                    title: 'MediaFire',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: downButton(
                    tap: () => launchURL(url: manga.downZippy),
                    color: Colors.deepOrange,
                    title: 'ZippyShare',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: downButton(
                    tap: () => launchURL(url: manga.downTorre),
                    color: Colors.green,
                    title: 'Torrent',
                  ),
                ),
                */
              ],
            ),
          ),
        ],
      ),
    );
  }
}
