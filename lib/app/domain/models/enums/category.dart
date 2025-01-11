// ignore_for_file: constant_identifier_names

import 'package:hive_flutter/hive_flutter.dart';
import 'package:picanhometro/app/domain/models/enums/enum_values.dart';

part 'category.g.dart';

@HiveType(typeId: 7)
enum Category {
  @HiveField(0)
  AFTER_DINNER_COCKTAIL,

  @HiveField(1)
  ALL_DAY_COCKTAIL,

  @HiveField(2)
  BEFORE_DINNER_COCKTAIL,

  @HiveField(3)
  HOT_DRINK,

  @HiveField(4)
  LONGDRINK,

  @HiveField(5)
  SPARKLING_COCKTAIL
}

final categoryValues = EnumValues({
  "After Dinner Cocktail": Category.AFTER_DINNER_COCKTAIL,
  "All Day Cocktail": Category.ALL_DAY_COCKTAIL,
  "Before Dinner Cocktail": Category.BEFORE_DINNER_COCKTAIL,
  "Hot Drink": Category.HOT_DRINK,
  "Longdrink": Category.LONGDRINK,
  "Sparkling Cocktail": Category.SPARKLING_COCKTAIL
});
