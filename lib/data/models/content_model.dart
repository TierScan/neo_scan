class ContentModel {
  final String title;

  ContentModel({required this.title});

  //  Se utiliza para actualizar los datos de la 'Novela' sin modificar la instancia original.
  ContentModel copyWith({String? title}) => ContentModel(title: title ?? this.title);

  //  Devuelve un mapa de las propiedades de la 'Novela'.
  Map<String, dynamic> toMap() => {'title': title};

  //  Devuelve un mapa de las propiedades de la 'Novela' en formato JSON.
  Map<String, dynamic> toJson() => {'title': title};

  //  Convierte un mapa JSON en una instancia de ContentModel.
  factory ContentModel.fromJson(Map<String, dynamic> json) => ContentModel(title: json['title']);
}
