// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryAdapter extends TypeAdapter<Category> {
  @override
  final int typeId = 7;

  @override
  Category read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Category.AFTER_DINNER_COCKTAIL;
      case 1:
        return Category.ALL_DAY_COCKTAIL;
      case 2:
        return Category.BEFORE_DINNER_COCKTAIL;
      case 3:
        return Category.HOT_DRINK;
      case 4:
        return Category.LONGDRINK;
      case 5:
        return Category.SPARKLING_COCKTAIL;
      default:
        return Category.AFTER_DINNER_COCKTAIL;
    }
  }

  @override
  void write(BinaryWriter writer, Category obj) {
    switch (obj) {
      case Category.AFTER_DINNER_COCKTAIL:
        writer.writeByte(0);
        break;
      case Category.ALL_DAY_COCKTAIL:
        writer.writeByte(1);
        break;
      case Category.BEFORE_DINNER_COCKTAIL:
        writer.writeByte(2);
        break;
      case Category.HOT_DRINK:
        writer.writeByte(3);
        break;
      case Category.LONGDRINK:
        writer.writeByte(4);
        break;
      case Category.SPARKLING_COCKTAIL:
        writer.writeByte(5);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
