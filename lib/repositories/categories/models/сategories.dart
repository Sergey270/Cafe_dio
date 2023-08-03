class Categories {

 final String id;
 final String name;
 final String image_url;


  Categories({
   required this.id,
    required this.name,
    required this.image_url,
  });

  // factory Categories.fromJson(Map<String, dynamic> json) =>
  //     _$CategoriesFromJson(json);
  //
  // Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}