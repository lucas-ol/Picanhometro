// ignore_for_file: constant_identifier_names

import 'package:hive_flutter/hive_flutter.dart';
import 'package:picanhometro/app/domain/models/enums/enum_values.dart';

part 'unit.g.dart';

@HiveType(typeId: 6)
enum Unit {
  @HiveField(0)
  CL
}

final unitValues = EnumValues({"cl": Unit.CL});
