// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UnitAdapter extends TypeAdapter<Unit> {
  @override
  final int typeId = 6;

  @override
  Unit read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Unit.CL;
      default:
        return Unit.CL;
    }
  }

  @override
  void write(BinaryWriter writer, Unit obj) {
    switch (obj) {
      case Unit.CL:
        writer.writeByte(0);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
