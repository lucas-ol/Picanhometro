import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:picanhometro/app/domain/models/hashed_object.dart';
import 'package:picanhometro/app/reposiroties/hashed_object/i_hashed_object_repository.dart';
import 'package:picanhometro/app/reposiroties/alcohol_ingredient/i_alcohol_ingredient_repository.dart';
import 'package:picanhometro/app/reposiroties/recipes/i_recipes_repository.dart';
import 'package:picanhometro/app/services/recipes_db/i_assets_db_loader.dart';
part 'global_drinks_store.g.dart';

class GlobalDrinksStore = GlobalDrinksStoreBase with _$GlobalDrinksStore;

abstract class GlobalDrinksStoreBase with Store {
  final recipesDbService = Modular.get<IAssetsDbLoader>();
  final recipesRepository = Modular.get<IRecipesRepository>();
  final ingredientsRepository = Modular.get<IAlcoholIngredientRepository>();
  final hashRepository = Modular.get<IHashedObjectRepository>();

  @action
  Future loadInitialData() async {
    await _loadRecipes();
    await _loadIngredients();
  }

  Future _loadRecipes() async {
    final hashRecipes = await recipesDbService.getHashRecipes();
    final currentHashRecipes = await hashRepository.get("recipes");
    if (hashRecipes != currentHashRecipes?.hash) {
      final recipes = await recipesDbService.loadRecipes();

      recipesRepository.cleanData();
      recipesRepository.addAll(recipes);
      await hashRepository.update(HashedObject.create("recipes", hashRecipes));
    }
  }

  Future _loadIngredients() async {
    final hashIngredients = await recipesDbService.getHashIgredients();
    final currentHashIngredients = await hashRepository.get("ingredients");
    if (hashIngredients != currentHashIngredients?.hash) {
      final ingredients = await recipesDbService.loadIngredients();
      ingredientsRepository.cleanData();
      ingredientsRepository.addAll(ingredients);
      await hashRepository
          .update(HashedObject.create("ingredients", hashIngredients));
    }
  }
}
