class Addon {
  String? dishId;
  String? dishName;
  int? dishPrice;
  String? dishImage;
  String? dishCurrency;
  int? dishCalories;
  String? dishDescription;
  bool? dishAvailability;
  int? dishType;

  Addon({
    this.dishId,
    this.dishName,
    this.dishPrice,
    this.dishImage,
    this.dishCurrency,
    this.dishCalories,
    this.dishDescription,
    this.dishAvailability,
    this.dishType,
  });

  factory Addon.fromJson(Map<String, dynamic> json) => Addon(
        dishId: json['dish_id'] as String?,
        dishName: json['dish_name'] as String?,
        dishPrice: json['dish_price'] as int?,
        dishImage: json['dish_image'] as String?,
        dishCurrency: json['dish_currency'] as String?,
        dishCalories: json['dish_calories'] as int?,
        dishDescription: json['dish_description'] as String?,
        dishAvailability: json['dish_Availability'] as bool?,
        dishType: json['dish_Type'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'dish_id': dishId,
        'dish_name': dishName,
        'dish_price': dishPrice,
        'dish_image': dishImage,
        'dish_currency': dishCurrency,
        'dish_calories': dishCalories,
        'dish_description': dishDescription,
        'dish_Availability': dishAvailability,
        'dish_Type': dishType,
      };
}
