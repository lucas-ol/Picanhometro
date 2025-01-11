// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipesAdapter extends TypeAdapter<Recipes> {
  @override
  final int typeId = 1;

  @override
  Recipes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Recipes(
      name: fields[1] as String,
      glass: fields[2] as String?,
      category: fields[3] as Category?,
      ingredients: (fields[4] as List).cast<Ingredient>(),
      garnish: fields[5] as String?,
      preparation: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Recipes obj) {
    writer
      ..writeByte(6)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.glass)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.ingredients)
      ..writeByte(5)
      ..write(obj.garnish)
      ..writeByte(6)
      ..write(obj.preparation);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Recipes on RecipesBase, Store {
  late final _$nameAtom = Atom(name: 'RecipesBase.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$glassAtom = Atom(name: 'RecipesBase.glass', context: context);

  @override
  String? get glass {
    _$glassAtom.reportRead();
    return super.glass;
  }

  @override
  set glass(String? value) {
    _$glassAtom.reportWrite(value, super.glass, () {
      super.glass = value;
    });
  }

  late final _$categoryAtom =
      Atom(name: 'RecipesBase.category', context: context);

  @override
  Category? get category {
    _$categoryAtom.reportRead();
    return super.category;
  }

  @override
  set category(Category? value) {
    _$categoryAtom.reportWrite(value, super.category, () {
      super.category = value;
    });
  }

  late final _$ingredientsAtom =
      Atom(name: 'RecipesBase.ingredients', context: context);

  @override
  List<Ingredient> get ingredients {
    _$ingredientsAtom.reportRead();
    return super.ingredients;
  }

  @override
  set ingredients(List<Ingredient> value) {
    _$ingredientsAtom.reportWrite(value, super.ingredients, () {
      super.ingredients = value;
    });
  }

  late final _$garnishAtom =
      Atom(name: 'RecipesBase.garnish', context: context);

  @override
  String? get garnish {
    _$garnishAtom.reportRead();
    return super.garnish;
  }

  @override
  set garnish(String? value) {
    _$garnishAtom.reportWrite(value, super.garnish, () {
      super.garnish = value;
    });
  }

  late final _$preparationAtom =
      Atom(name: 'RecipesBase.preparation', context: context);

  @override
  String? get preparation {
    _$preparationAtom.reportRead();
    return super.preparation;
  }

  @override
  set preparation(String? value) {
    _$preparationAtom.reportWrite(value, super.preparation, () {
      super.preparation = value;
    });
  }

  @override
  String toString() {
    return '''
name: ${name},
glass: ${glass},
category: ${category},
ingredients: ${ingredients},
garnish: ${garnish},
preparation: ${preparation}
    ''';
  }
}
