import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
import 'package:picanhometro/app/domain/models/enums/unit.dart';
part 'ingredient.g.dart';

@HiveType(typeId: 2)
class Ingredient extends IngredientBase with _$Ingredient {
  factory Ingredient.fromMap(Map<String, dynamic> json) => Ingredient(
        unit: unitValues.map[json["unit"]],
        amount: json["amount"]?.toDouble(),
        ingredient: json["ingredient"],
        label: json["label"],
        special: json["special"],
      );

  Ingredient({
    super.unit,
    super.amount,
    super.ingredient,
    super.label,
    super.special,
  });
}

abstract class IngredientBase extends HiveObject with Store {
  @HiveField(1)
  @observable
  Unit? unit;

  @HiveField(2)
  @observable
  double? amount;

  @HiveField(3)
  @observable
  String? ingredient;

  @HiveField(4)
  @observable
  String? label;

  @HiveField(5)
  @observable
  String? special;

  IngredientBase({
    this.unit,
    this.amount,
    this.ingredient,
    this.label,
    this.special,
  });

  Map<String, dynamic> toMap() => {
        "unit": unitValues.reverse[unit],
        "amount": amount,
        "ingredient": ingredient,
        "label": label,
        "special": special,
      };
}
