import 'table_menu_list.dart';

class DataModels {
  String? restaurantId;
  String? restaurantName;
  String? restaurantImage;
  String? tableId;
  String? tableName;
  String? branchName;
  String? nexturl;
  List<TableMenuList>? tableMenuList;

  DataModels({
    this.restaurantId,
    this.restaurantName,
    this.restaurantImage,
    this.tableId,
    this.tableName,
    this.branchName,
    this.nexturl,
    this.tableMenuList,
  });

  factory DataModels.fromJson(Map<String, dynamic> json) => DataModels(
        restaurantId: json['restaurant_id'] as String?,
        restaurantName: json['restaurant_name'] as String?,
        restaurantImage: json['restaurant_image'] as String?,
        tableId: json['table_id'] as String?,
        tableName: json['table_name'] as String?,
        branchName: json['branch_name'] as String?,
        nexturl: json['nexturl'] as String?,
        tableMenuList: (json['table_menu_list'] as List<dynamic>?)
            ?.map((e) => TableMenuList.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'restaurant_id': restaurantId,
        'restaurant_name': restaurantName,
        'restaurant_image': restaurantImage,
        'table_id': tableId,
        'table_name': tableName,
        'branch_name': branchName,
        'nexturl': nexturl,
        'table_menu_list': tableMenuList?.map((e) => e.toJson()).toList(),
      };
}
