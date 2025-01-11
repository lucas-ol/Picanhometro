// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IngredientAdapter extends TypeAdapter<Ingredient> {
  @override
  final int typeId = 2;

  @override
  Ingredient read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ingredient(
      unit: fields[1] as Unit?,
      amount: fields[2] as double?,
      ingredient: fields[3] as String?,
      label: fields[4] as String?,
      special: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Ingredient obj) {
    writer
      ..writeByte(5)
      ..writeByte(1)
      ..write(obj.unit)
      ..writeByte(2)
      ..write(obj.amount)
      ..writeByte(3)
      ..write(obj.ingredient)
      ..writeByte(4)
      ..write(obj.label)
      ..writeByte(5)
      ..write(obj.special);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IngredientAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Ingredient on IngredientBase, Store {
  late final _$unitAtom = Atom(name: 'IngredientBase.unit', context: context);

  @override
  Unit? get unit {
    _$unitAtom.reportRead();
    return super.unit;
  }

  @override
  set unit(Unit? value) {
    _$unitAtom.reportWrite(value, super.unit, () {
      super.unit = value;
    });
  }

  late final _$amountAtom =
      Atom(name: 'IngredientBase.amount', context: context);

  @override
  double? get amount {
    _$amountAtom.reportRead();
    return super.amount;
  }

  @override
  set amount(double? value) {
    _$amountAtom.reportWrite(value, super.amount, () {
      super.amount = value;
    });
  }

  late final _$ingredientAtom =
      Atom(name: 'IngredientBase.ingredient', context: context);

  @override
  String? get ingredient {
    _$ingredientAtom.reportRead();
    return super.ingredient;
  }

  @override
  set ingredient(String? value) {
    _$ingredientAtom.reportWrite(value, super.ingredient, () {
      super.ingredient = value;
    });
  }

  late final _$labelAtom = Atom(name: 'IngredientBase.label', context: context);

  @override
  String? get label {
    _$labelAtom.reportRead();
    return super.label;
  }

  @override
  set label(String? value) {
    _$labelAtom.reportWrite(value, super.label, () {
      super.label = value;
    });
  }

  late final _$specialAtom =
      Atom(name: 'IngredientBase.special', context: context);

  @override
  String? get special {
    _$specialAtom.reportRead();
    return super.special;
  }

  @override
  set special(String? value) {
    _$specialAtom.reportWrite(value, super.special, () {
      super.special = value;
    });
  }

  @override
  String toString() {
    return '''
unit: ${unit},
amount: ${amount},
ingredient: ${ingredient},
label: ${label},
special: ${special}
    ''';
  }
}
