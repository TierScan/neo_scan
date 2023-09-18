import 'package:neo_scan/data/data_sources/manga_data.dart';
import 'package:neo_scan/data/models/manga_model.dart';

//
List<MangaModel> allMangas = List.from(MangaData.allManga);

//
Future<List<MangaModel>> loadMangaAll() async {
  await Future.delayed(const Duration(seconds: 2));
  List<MangaModel> mang = MangaData.allManga;

  return mang;
}
