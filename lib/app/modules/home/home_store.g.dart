// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$counterAtom =
      Atom(name: 'HomeStoreBase.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$drinksAtom =
      Atom(name: 'HomeStoreBase.drinks', context: context);

  @override
  List<Recipes> get drinks {
    _$drinksAtom.reportRead();
    return super.drinks;
  }

  @override
  set drinks(List<Recipes> value) {
    _$drinksAtom.reportWrite(value, super.drinks, () {
      super.drinks = value;
    });
  }

  @override
  String toString() {
    return '''
counter: ${counter},
drinks: ${drinks}
    ''';
  }
}
