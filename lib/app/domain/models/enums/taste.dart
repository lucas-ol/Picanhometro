// ignore_for_file: constant_identifier_names

import 'package:picanhometro/app/domain/models/enums/enum_values.dart';

import 'package:hive/hive.dart';

part 'taste.g.dart';

@HiveType(typeId: 5)
enum Taste {
  @HiveField(0)
  BITTER,
  @HiveField(1)
  SALTY,
  @HiveField(2)
  SOUR,
  @HiveField(3)
  SWEET
}

final tasteValues = EnumValues({
  "bitter": Taste.BITTER,
  "salty": Taste.SALTY,
  "sour": Taste.SOUR,
  "sweet": Taste.SWEET
});
