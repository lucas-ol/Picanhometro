// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hashed_object.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HashedObjectAdapter extends TypeAdapter<HashedObject> {
  @override
  final int typeId = 4;

  @override
  HashedObject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HashedObject()
      ..hash = fields[0] as String
      ..objectName = fields[1] as String;
  }

  @override
  void write(BinaryWriter writer, HashedObject obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.hash)
      ..writeByte(1)
      ..write(obj.objectName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HashedObjectAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HashedObject on HashedObjectBase, Store {
  late final _$hashAtom = Atom(name: 'HashedObjectBase.hash', context: context);

  @override
  String get hash {
    _$hashAtom.reportRead();
    return super.hash;
  }

  @override
  set hash(String value) {
    _$hashAtom.reportWrite(value, super.hash, () {
      super.hash = value;
    });
  }

  late final _$objectNameAtom =
      Atom(name: 'HashedObjectBase.objectName', context: context);

  @override
  String get objectName {
    _$objectNameAtom.reportRead();
    return super.objectName;
  }

  @override
  set objectName(String value) {
    _$objectNameAtom.reportWrite(value, super.objectName, () {
      super.objectName = value;
    });
  }

  @override
  String toString() {
    return '''
hash: ${hash},
objectName: ${objectName}
    ''';
  }
}
