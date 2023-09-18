import 'package:flutter/material.dart';
import 'package:neo_scan/core/export/theme_export.dart';
import 'package:neo_scan/core/export/widget_export.dart';
import 'package:neo_scan/data/models/manga_model.dart';

class DetailTablet extends StatelessWidget {
  const DetailTablet({super.key, required this.manga,});

  final MangaModel manga;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTheme.colorInto,
      ),
      backgroundColor: ColorTheme.colorBack,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8.0),
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
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            //  Ttitle
                            Expanded(
                              flex: 1,
                              child: titleBarra(
                                color: ColorTheme.colorMain,
                                text: 'Información',
                                height: MediaQuery.of(context).size.height,
                                size: 18.0,
                              ),
                            ),

                            //
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        //
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Nombre Ingles:',
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Text(
                                                manga.alternativeEN,
                                                style: const TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        const SizedBox(height: 8.0),

                                        //
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Nombre Japones:',
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Text(
                                                manga.alternativeJP,
                                                style: const TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        const SizedBox(height: 8.0),

                                        //
                                        Expanded(
                                          child: Text(
                                            'Titulo',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: ColorTheme.colorMain,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Titulo',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: ColorTheme.colorMain,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Titulo',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: ColorTheme.colorMain,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //
                                  const Expanded(
                                    flex: 2,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Placeholder(),
                                        ),
                                        Expanded(
                                          child: Placeholder(),
                                        ),
                                        Expanded(
                                          child: Placeholder(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //  Enlaces del Descarga
                      Expanded(
                        flex: 1,
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
                                    padding: const EdgeInsets.all(2.0),
                                    child: downButton(color: Colors.red, title: 'MEGA', tap: () {}),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: downButton(color: Colors.blue, title: 'MediaFire', tap: () {}),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: downButton(color: Colors.indigo, title: 'DropBox', tap: () {}),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: downButton(color: Colors.deepOrange, title: 'ZippyShare', tap: () {}),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: downButton(color: Colors.green, title: 'Torrent', tap: () {}),
                                  ),
                                  */
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //  Imagenes del Manga
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            //  Ttitle
                            Expanded(
                              flex: 1,
                              child: titleBarra(
                                color: ColorTheme.colorMain,
                                text: 'Preview',
                                height: MediaQuery.of(context).size.height,
                                size: 18.0,
                              ),
                            ),

                            const Expanded(
                              flex: 3,
                              child: Placeholder(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
