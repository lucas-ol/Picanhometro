import 'package:hive/hive.dart';
import 'package:picanhometro/app/domain/models/drinks/alcohol_ingredient.dart';
import 'package:picanhometro/app/domain/models/drinks/ingredient.dart';
import 'package:picanhometro/app/domain/models/drinks/recipes.dart';
import 'package:picanhometro/app/domain/models/enums/category.dart';
import 'package:picanhometro/app/domain/models/enums/taste.dart';
import 'package:picanhometro/app/domain/models/enums/unit.dart';
import 'package:picanhometro/app/domain/models/hashed_object.dart';

/// A static class to register all Hive adapters.
/// This class is responsible for registering all the generated adapters
/// to ensure that Hive can properly serialize and deserialize objects.
class MainAdapters {
  /// Registers all the generated Hive adapters.
  static void registerAdapters() {
    // Example: Hive.registerAdapter(YourAdapter());
    // Add your generated adapters registration here.
    Hive.registerAdapter(RecipesAdapter());
    Hive.registerAdapter(IngredientAdapter());
    Hive.registerAdapter(AlcoholIngredientAdapter());
    Hive.registerAdapter(HashedObjectAdapter());

    Hive.registerAdapter(CategoryAdapter());
    Hive.registerAdapter(TasteAdapter());
    Hive.registerAdapter(UnitAdapter());
  }
}