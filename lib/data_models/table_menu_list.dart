import 'category_dish.dart';

class TableMenuList {
  String? menuCategory;
  String? menuCategoryId;
  String? menuCategoryImage;
  String? nexturl;
  List<CategoryDish>? categoryDishes;

  TableMenuList({
    this.menuCategory,
    this.menuCategoryId,
    this.menuCategoryImage,
    this.nexturl,
    this.categoryDishes,
  });

  factory TableMenuList.fromJson(Map<String, dynamic> json) => TableMenuList(
        menuCategory: json['menu_category'] as String?,
        menuCategoryId: json['menu_category_id'] as String?,
        menuCategoryImage: json['menu_category_image'] as String?,
        nexturl: json['nexturl'] as String?,
        categoryDishes: (json['category_dishes'] as List<dynamic>?)
            ?.map((e) => CategoryDish.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'menu_category': menuCategory,
        'menu_category_id': menuCategoryId,
        'menu_category_image': menuCategoryImage,
        'nexturl': nexturl,
        'category_dishes': categoryDishes?.map((e) => e.toJson()).toList(),
      };
}
