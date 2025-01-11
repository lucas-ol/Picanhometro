import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:picanhometro/app/domain/models/drinks/recipes.dart';
import 'package:picanhometro/app/reposiroties/recipes/i_recipes_repository.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final IRecipesRepository recipesRepository =
      Modular.get<IRecipesRepository>();
  @observable
  int counter = 0;

  @observable
  List<Recipes> drinks = [];

  Future<void> loadDrinks() async {
    final drinks = await recipesRepository.list();
    await Future.delayed(const Duration(seconds: 2));
    this.drinks = drinks;
  }
}
