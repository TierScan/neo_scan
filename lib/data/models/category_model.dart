class CategoryModel {
  final String title;

  CategoryModel({required this.title});

  //  Se utiliza para actualizar los datos de la 'Novela' sin modificar la instancia original.
  CategoryModel copyWith({String? title}) => CategoryModel(title: title ?? this.title);

  //  Devuelve un mapa de las propiedades de la 'Novela'.
  Map<String, dynamic> toMap() => {'title': title};

  //  Devuelve un mapa de las propiedades de la 'Novela' en formato JSON.
  Map<String, dynamic> toJson() => {'title': title};

  //  Convierte un mapa JSON en una instancia de CategoryModel.
  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(title: json['title']);
}
