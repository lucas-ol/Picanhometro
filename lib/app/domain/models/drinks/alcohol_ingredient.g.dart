// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alcohol_ingredient.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AlcoholIngredientAdapter extends TypeAdapter<AlcoholIngredient> {
  @override
  final int typeId = 3;

  @override
  AlcoholIngredient read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AlcoholIngredient(
      abv: fields[1] as int,
      taste: fields[2] as Taste?,
      name: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AlcoholIngredient obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.abv)
      ..writeByte(2)
      ..write(obj.taste)
      ..writeByte(3)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlcoholIngredientAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AlcoholIngredient on AlcoholIngredientBase, Store {
  late final _$abvAtom =
      Atom(name: 'AlcoholIngredientBase.abv', context: context);

  @override
  int get abv {
    _$abvAtom.reportRead();
    return super.abv;
  }

  @override
  set abv(int value) {
    _$abvAtom.reportWrite(value, super.abv, () {
      super.abv = value;
    });
  }

  late final _$tasteAtom =
      Atom(name: 'AlcoholIngredientBase.taste', context: context);

  @override
  Taste? get taste {
    _$tasteAtom.reportRead();
    return super.taste;
  }

  @override
  set taste(Taste? value) {
    _$tasteAtom.reportWrite(value, super.taste, () {
      super.taste = value;
    });
  }

  late final _$nameAtom =
      Atom(name: 'AlcoholIngredientBase.name', context: context);

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

  @override
  String toString() {
    return '''
abv: ${abv},
taste: ${taste},
name: ${name}
    ''';
  }
}
