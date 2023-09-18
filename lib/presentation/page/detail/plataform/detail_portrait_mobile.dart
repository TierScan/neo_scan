import 'package:flutter/material.dart';
import 'package:neo_scan/core/export/package_export.dart';
import 'package:neo_scan/core/export/theme_export.dart';
import 'package:neo_scan/data/models/manga_model.dart';

class DetailPortraitMobile extends StatelessWidget {
  const DetailPortraitMobile({super.key, required this.manga});

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
      ),
      backgroundColor: ColorTheme.colorBack,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              //  Portada Manga
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    //  Text Titulo
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
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

                    const SizedBox(height: 6.0),

                    //  Image Portada
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
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

              const SizedBox(height: 6.0),

              //  Datos del Manga
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(6.0),
                margin: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    //
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: ColorTheme.colorInto,
                      ),
                      child: Column(
                        children: [
                          Text(
                            manga.alternativeEN,
                            style: const TextStyle(fontSize: 14.0, color: Colors.grey),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            manga.alternativeJP,
                            style: const TextStyle(fontSize: 14.0, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 6.0),

                    //
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: ColorTheme.colorInto,
                      ),
                      child: Column(
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

                    const SizedBox(height: 6.0),

                    //
                    Container(
                      height: 120.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: ColorTheme.colorInto,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
