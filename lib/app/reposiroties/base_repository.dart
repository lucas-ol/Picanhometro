import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class BaseRepository<T extends HiveObject> {
  @protected
  String get boxName;

  BaseRepository();

  Future<Box<T>> _openBox() async {
    if (!Hive.isBoxOpen(boxName)) {
      return await Hive.openBox<T>(boxName);
    }
    return Hive.box<T>(boxName);
  }

  Future<void> add(T item) async {
    final box = await _openBox();
    await box.add(item);
  }

  Future<void> addAll(Iterable<T> item) async {
    final box = await _openBox();
    await box.addAll(item);
  }

  Future<void> update(T item) async {
    if (item.key == null) {
      throw Exception("Cannot update an item without a key.");
    }
    final box = await _openBox();
    await box.put(item.key, item);
  }

  Future<void> delete(T item) async {
    if (item.key == null) {
      throw Exception("Cannot delete an item without a key.");
    }
    final box = await _openBox();
    await box.delete(item.key);
  }

  Future<T?> get(String id) async {
    final box = await _openBox();
    return box.get(id);
  }

  Future<List<T>> list() async {
    final box = await _openBox();
    final keys = box.keys;
    if (keys.isEmpty) {
      return [];
    }

    return keys.map((e) => box.get(e)!).toList();
  }

  Future<void> cleanData() async {
    final box = await _openBox();
    await box.clear();
  }
}
