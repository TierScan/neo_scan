class ChapterModel {
  final String img;
  final String title;
  final String downMedia;
  final String downMega;
  final String downTorre;
  final String downZippy;

  ChapterModel({
    required this.img,
    required this.title,
    required this.downMedia,
    required this.downMega,
    required this.downTorre,
    required this.downZippy,
  });

  //  Se utiliza para actualizar los datos de la 'Novela' sin modificar la instancia original.
  ChapterModel copyWith({
    String? img,
    String? title,
    String? downMedia,
    String? downMega,
    String? downTorre,
    String? downZippy,
  }) =>
      ChapterModel(
        img: img ?? this.img,
        title: title ?? this.title,
        downMedia: downMedia ?? this.downMedia,
        downMega: downMega ?? this.downMega,
        downTorre: downTorre ?? this.downTorre,
        downZippy: downZippy ?? this.downZippy,
      );

  //  Devuelve un mapa de las propiedades de la 'Novela'.
  Map<String, dynamic> toMap() => {
        'img': img,
        'title': title,
        'downMedia': downMedia,
        'downMega': downMega,
        'downTorre': downTorre,
        'downZippy': downZippy,
      };

  //  Devuelve un mapa de las propiedades de la 'Novela' en formato JSON.
  Map<String, dynamic> toJson() => {
        'img': img,
        'title': title,
        'downMedia': downMedia,
        'downMega': downMega,
        'downTorre': downTorre,
        'downZippy': downZippy,
      };

  //  Convierte un mapa JSON en una instancia de ChapterModel.
  factory ChapterModel.fromJson(Map<String, dynamic> json) => ChapterModel(
        img: json['img'],
        title: json['title'],
        downMedia: json['downMedia'],
        downMega: json['downMega'],
        downTorre: json['downTorre'],
        downZippy: json['downZippy'],
      );
}

/*
Este código define una clase ChapterModel que representa un modelo de datos para una 'Novela' en una aplicación. La clase tiene varias propiedades, que se describen a continuación:

- img: una cadena que representa la URL de la imagen de portada de la 'Novela'.

----------------------------------------------------------------------------------------------------

La clase tiene varios métodos, que se describen a continuación:

- ChapterModel(): el constructor de la clase que inicializa todas las propiedades de la 'Novela'.

- copyWith(): un método que devuelve una copia de la 'Novela' con los valores de las propiedades especificadas reemplazados por los nuevos valores. Esto se utiliza para actualizar los datos de la 'Novela' sin modificar la instancia original.

- toMap(): un método que devuelve un mapa de las propiedades de la 'Novela'.

- toJson(): un método que devuelve un mapa de las propiedades de la 'Novela' en formato JSON.

- fromJson(): un método estático que convierte un mapa JSON en una instancia de ChapterModel.
*/
