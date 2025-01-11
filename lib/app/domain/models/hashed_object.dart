import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobx/mobx.dart';
part 'hashed_object.g.dart';

@HiveType(typeId: 4)
class HashedObject extends HashedObjectBase with _$HashedObject {
  HashedObject();
  factory HashedObject.create(String hash, String objectName) {
    return HashedObject()
      ..hash = hash
      ..objectName = objectName;
  }
}

abstract class HashedObjectBase extends HiveObject with Store {
  HashedObjectBase();
  @override
  get key => objectName;

  @HiveField(0)
  @observable
  String hash = "";

  @HiveField(1)
  @observable
  String objectName = "";
}
