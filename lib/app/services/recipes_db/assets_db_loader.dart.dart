import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:picanhometro/app/core/utils/json_hasher.dart';
import 'package:picanhometro/app/domain/models/drinks/alcohol_ingredient.dart';
import 'package:picanhometro/app/domain/models/drinks/recipes.dart';
import 'package:picanhometro/app/services/recipes_db/i_assets_db_loader.dart';

class RecipesDbService implements IAssetsDbLoader {
  static const _pathDatabase = 'assets/drinks_db';
  static const _recipesFile = '$_pathDatabase/recipes.json';
  static const _ingredientsFile = '$_pathDatabase/ingredients.json';
  @override
  Future<List<Recipes>> loadRecipes() async {
    final jsonString = await rootBundle.loadString(_recipesFile);

    final recipes = jsonDecode(jsonString) as List<dynamic>;

    return recipes.map((e) => Recipes.fromMap(e)).toList();
  }

  @override
  Future<List<AlcoholIngredient>> loadIngredients() async {
    final jsonString = await rootBundle.loadString(_ingredientsFile);
    final recipes = jsonDecode(jsonString) as Map<String,dynamic> ;

    return recipes.entries.map((e) => AlcoholIngredient.fromMap(e.key,e.value)).toList();
  }

  @override
  Future<String> getHashIgredients() async {
    return JsonHasher.generateHash(_ingredientsFile);
  }

  @override
  Future<String> getHashRecipes() async {
    return JsonHasher.generateHash(_recipesFile);
  }
}
