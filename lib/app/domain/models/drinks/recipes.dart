import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
import 'package:picanhometro/app/domain/models/drinks/ingredient.dart';
import 'package:picanhometro/app/domain/models/enums/category.dart';
part 'recipes.g.dart';

@HiveType(typeId: 1)
class Recipes extends RecipesBase with _$Recipes {
  factory Recipes.fromMap(Map<String, dynamic> json) => Recipes(
        name: json["name"],
        glass: json["glass"],
        category: categoryValues.map[json["category"]],
        ingredients: List<Ingredient>.from(
            json["ingredients"].map((x) => Ingredient.fromMap(x))),
        garnish: json["garnish"],
        preparation: json["preparation"],
      );

  Recipes({
    required super.name,
    super.glass,
    super.category,
    required super.ingredients,
    super.garnish,
    super.preparation,
  });
}

abstract class RecipesBase extends HiveObject with Store  {
  @HiveField(1)
  @observable
  String name = "";

  @HiveField(2)
  @observable
  String? glass;

  @HiveField(3)
  @observable
  Category? category;

  @HiveField(4)
  @observable
  List<Ingredient> ingredients = [];

  @HiveField(5)
  @observable
  String? garnish;

  @HiveField(6)
  @observable
  String? preparation;

  RecipesBase({
    required this.name,
    required this.glass,
    this.category,
    required this.ingredients,
    this.garnish,
    this.preparation,
  });

  Map<String, dynamic> toMap() => {
        "name": name,
        "glass": glass,
        "category": categoryValues.reverse[category],
        "ingredients": List<dynamic>.from(ingredients.map((x) => x.toMap())),
        "garnish": garnish,
        "preparation": preparation,
      };
}
