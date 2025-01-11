import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
import 'package:picanhometro/app/domain/models/enums/taste.dart';
part 'alcohol_ingredient.g.dart';

@HiveType(typeId: 3)
class AlcoholIngredient extends AlcoholIngredientBase with _$AlcoholIngredient {
  factory AlcoholIngredient.fromMap(String name, Map<String, dynamic> json) =>
      AlcoholIngredient(
        abv: json["abv"],
        taste: tasteValues.map[json["taste"]],
        name: name,
      );

  AlcoholIngredient({
    super.abv = 0,
    super.taste,
    required super.name,
  });
}

abstract class AlcoholIngredientBase extends HiveObject with Store {
  @HiveField(1)
  @observable
  int abv = 10;

  @HiveField(2)
  @observable
  Taste? taste;

  @HiveField(3)
  @observable
  String name;

  AlcoholIngredientBase({
    required this.abv,
    this.taste,
    required this.name,
  });
}
