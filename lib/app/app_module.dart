import 'package:flutter_modular/flutter_modular.dart';
import 'package:picanhometro/app/core/stores/global_drinks_store.dart';
import 'package:picanhometro/app/core/stores/global_store.dart';
import 'package:picanhometro/app/reposiroties/alcohol_ingredient/alcohol_ingredient_repository.dart';
import 'package:picanhometro/app/reposiroties/alcohol_ingredient/i_alcohol_ingredient_repository.dart';
import 'package:picanhometro/app/reposiroties/hashed_object/hashed_object_repository.dart';
import 'package:picanhometro/app/reposiroties/hashed_object/i_hashed_object_repository.dart';
import 'package:picanhometro/app/reposiroties/recipes/i_recipes_repository.dart';
import 'package:picanhometro/app/reposiroties/recipes/recipes_repository.dart';
import 'package:picanhometro/app/services/churracometro/churracometro.dart';
import 'package:picanhometro/app/services/churracometro/i_churracometro.dart';
import 'package:picanhometro/app/services/recipes_db/i_assets_db_loader.dart';
import 'package:picanhometro/app/services/recipes_db/assets_db_loader.dart.dart';
import 'package:picanhometro/app/modules/churrascometro/churrascometro_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.add<IChurracometro>(Churracometro.new);
    i.add<IAssetsDbLoader>(RecipesDbService.new);
    i.add(GlobalStore.new);
    i.add(GlobalDrinksStore.new);

    //LoadRepository
    i.add<IRecipesRepository>(RecipesRepository.new);
    i.add<IAlcoholIngredientRepository>(AlcoholIngredientRepository.new);
    i.add<IHashedObjectRepository>(HashedObjectRepository.new);
  }

  @override
  void routes(RouteManager r) {
    r.module('/', module: HomeModule());
    r.module('/${ChurrascometroModule.routeName}',
        module: ChurrascometroModule());
  }
}
