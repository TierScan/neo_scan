import 'package:neo_scan/data/data_sources/category_data.dart';
import 'package:neo_scan/data/data_sources/content_data.dart';
import 'package:neo_scan/data/data_sources/chapter_data.dart';
import 'package:neo_scan/data/models/manga_model.dart';

class MangaData {
  static List<MangaModel> allManga = [
    MangaModel(
      img: 'assets/img/portada/project_1.png',
      parodies: 'Original',
      title: 'El lugar donde me quedé pertenecía a las pervertidas gyaru onee-chans',
      alternativeEN: 'The Place I Stayed Over at Belonged to Perverted Gyaru Onee-chans',
      alternativeJP: 'Otomari Shita no wa H na Gal Onee-chan-tachi no Ouchi deshita',
      author: 'Sian',
      artists: 'Sian',
      groups: 'A Gokuburi',
      pages: '37',
      categories: CategoryData.categoryProject1,
      content: ContentData.contentProject1,
      listChapter: ChapterData.chapterProject1,
    ),
  ];
}
