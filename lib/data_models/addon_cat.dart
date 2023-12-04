import 'addon.dart';

class AddonCat {
  String? addonCategory;
  String? addonCategoryId;
  int? addonSelection;
  String? nexturl;
  List<Addon>? addons;

  AddonCat({
    this.addonCategory,
    this.addonCategoryId,
    this.addonSelection,
    this.nexturl,
    this.addons,
  });

  factory AddonCat.fromJson(Map<String, dynamic> json) => AddonCat(
        addonCategory: json['addon_category'] as String?,
        addonCategoryId: json['addon_category_id'] as String?,
        addonSelection: json['addon_selection'] as int?,
        nexturl: json['nexturl'] as String?,
        addons: (json['addons'] as List<dynamic>?)
            ?.map((e) => Addon.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'addon_category': addonCategory,
        'addon_category_id': addonCategoryId,
        'addon_selection': addonSelection,
        'nexturl': nexturl,
        'addons': addons?.map((e) => e.toJson()).toList(),
      };
}
