import 'package:neo_scan/data/models/category_model.dart';
import 'package:neo_scan/data/models/content_model.dart';
import 'package:neo_scan/data/models/chapter_model.dart';

class MangaModel {
  final String img;
  final String parodies;
  final String title;
  final String alternativeEN;
  final String alternativeJP;
  final String author;
  final String artists;
  final String groups;
  final String pages;
  final List<CategoryModel> categories;
  final List<ContentModel> content;
  final List<ChapterModel> listChapter;

  MangaModel({
    required this.img,
    required this.parodies,
    required this.title,
    required this.alternativeEN,
    required this.alternativeJP,
    required this.author,
    required this.artists,
    required this.groups,
    required this.pages,
    required this.categories,
    required this.content,
    required this.listChapter,
  });

  //  Se utiliza para actualizar los datos de la 'Novela' sin modificar la instancia original.
  MangaModel copyWith({
    String? img,
    String? parodies,
    String? title,
    String? alternativeEN,
    String? alternativeJP,
    String? author,
    String? artists,
    String? groups,
    String? pages,
    List<CategoryModel>? categories,
    List<ContentModel>? content,
    List<ChapterModel>? listChapter,
  }) {
    return MangaModel(
      img: img ?? this.img,
      parodies: parodies ?? this.parodies,
      title: title ?? this.title,
      alternativeEN: alternativeEN ?? this.alternativeEN,
      alternativeJP: alternativeJP ?? this.alternativeJP,
      author: author ?? this.author,
      artists: artists ?? this.artists,
      groups: groups ?? this.groups,
      pages: pages ?? this.pages,
      categories: categories ?? this.categories,
      content: content ?? this.content,
      listChapter: listChapter ?? this.listChapter,
    );
  }

  //  Devuelve un mapa de las propiedades de la 'Novela'.
  Map<String, dynamic> toMap() {
    return {
      'img': img,
      'parodies': parodies,
      'title': title,
      'alternativeEN': alternativeEN,
      'alternativeJP': alternativeJP,
      'author': author,
      'artists': artists,
      'groups': groups,
      'pages': pages,
      'categories': categories,
      'content': content,
      'listChapter': listChapter.toList(),
    };
  }

  //  Devuelve un mapa de las propiedades de la 'Novela' en formato JSON.
  Map<String, dynamic> toJson() {
    return {
      'img': img,
      'parodies': parodies,
      'title': title,
      'alternativeEN': alternativeEN,
      'alternativeJP': alternativeJP,
      'author': author,
      'artists': artists,
      'groups': groups,
      'pages': pages,
      'categories': categories,
      'content': content,
      'listChapter': listChapter.toList(),
    };
  }

  //  Convierte un mapa JSON en una instancia de MangaModel.
  factory MangaModel.fromJson(Map<String, dynamic> json) {
    return MangaModel(
      img: json['img'],
      parodies: json['parodies'],
      title: json['title'],
      alternativeEN: json['alternativeEN'],
      alternativeJP: json['alternativeJP'],
      author: json['author'],
      artists: json['artists'],
      groups: json['groups'],
      pages: json['pages'],
      categories: json['categories'],
      content: json['content'],
      listChapter: json['listChapter'],
    );
  }
}

/*
Este código define una clase MangaModel que representa un modelo de datos para una 'Novela' en una aplicación. La clase tiene varias propiedades, que se describen a continuación:

- img: una cadena que representa la URL de la imagen de portada de la 'Novela'.

- parodies: una cadena que representa el capítulo actual de la 'Novela' que se está leyendo.

- title: una cadena que representa el título de la 'Novela'.

- alternativeEN: una cadena que representa el título alternativo de la 'Novela'.

- alternativeJP: una cadena que representa el título alternativo de la 'Novela'.

- author: una cadena que representa el nombre del autor de la 'Novela'(por ejemplo, "Autor1", "Autor2", "Autor3".).

- artists: una cadena que representa la fuente de la 'Novela' (por ejemplo, "novelupdates.com").

- groups: una cadena que representa el género de la 'Novela' (por ejemplo, "'Novela' Web", "'Novela' Ligera".).

- categories: una cadena que representa el capítulo actual de la 'Novela' que se está leyendo.

- content: una cadena que representa la fecha de lanzamiento de la 'Novela'.

- pages: una cadena que representa el número de volumen de la 'Novela'.

- listWrite: una lista de objetos GenreModel que representa los Generos de la 'Novela'.

----------------------------------------------------------------------------------------------------

La clase tiene varios métodos, que se describen a continuación:

- MangaModel(): el constructor de la clase que inicializa todas las propiedades de la 'Novela'.

- copyWith(): un método que devuelve una copia de la 'Novela' con los valores de las propiedades especificadas reemplazados por los nuevos valores. Esto se utiliza para actualizar los datos de la 'Novela' sin modificar la instancia original.

- toMap(): un método que devuelve un mapa de las propiedades de la 'Novela'.

- toJson(): un método que devuelve un mapa de las propiedades de la 'Novela' en formato JSON.

- fromJson(): un método estático que convierte un mapa JSON en una instancia de MangaModel.
*/
