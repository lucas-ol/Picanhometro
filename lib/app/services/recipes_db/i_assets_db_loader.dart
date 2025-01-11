import 'package:picanhometro/app/domain/models/drinks/alcohol_ingredient.dart';
import 'package:picanhometro/app/domain/models/drinks/recipes.dart';

abstract class IAssetsDbLoader {
  Future<List<Recipes>> loadRecipes();

  Future<List<AlcoholIngredient>> loadIngredients();
  Future<String> getHashIgredients();
  Future<String> getHashRecipes();
}
