// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taste.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TasteAdapter extends TypeAdapter<Taste> {
  @override
  final int typeId = 5;

  @override
  Taste read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Taste.BITTER;
      case 1:
        return Taste.SALTY;
      case 2:
        return Taste.SOUR;
      case 3:
        return Taste.SWEET;
      default:
        return Taste.BITTER;
    }
  }

  @override
  void write(BinaryWriter writer, Taste obj) {
    switch (obj) {
      case Taste.BITTER:
        writer.writeByte(0);
        break;
      case Taste.SALTY:
        writer.writeByte(1);
        break;
      case Taste.SOUR:
        writer.writeByte(2);
        break;
      case Taste.SWEET:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TasteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
