// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'churrascometro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChurrascometroStore on ChurrascometroStoreBase, Store {
  Computed<double>? _$fatorDuracaoComputed;

  @override
  double get fatorDuracao =>
      (_$fatorDuracaoComputed ??= Computed<double>(() => super.fatorDuracao,
              name: 'ChurrascometroStoreBase.fatorDuracao'))
          .value;
  Computed<double>? _$criancasEquivalentesComputed;

  @override
  double get criancasEquivalentes => (_$criancasEquivalentesComputed ??=
          Computed<double>(() => super.criancasEquivalentes,
              name: 'ChurrascometroStoreBase.criancasEquivalentes'))
      .value;
  Computed<double>? _$carneComputed;

  @override
  double get carne => (_$carneComputed ??= Computed<double>(() => super.carne,
          name: 'ChurrascometroStoreBase.carne'))
      .value;
  Computed<double>? _$linguicaComputed;

  @override
  double get linguica =>
      (_$linguicaComputed ??= Computed<double>(() => super.linguica,
              name: 'ChurrascometroStoreBase.linguica'))
          .value;
  Computed<double>? _$paoDeAlhoComputed;

  @override
  double get paoDeAlho =>
      (_$paoDeAlhoComputed ??= Computed<double>(() => super.paoDeAlho,
              name: 'ChurrascometroStoreBase.paoDeAlho'))
          .value;
  Computed<double>? _$cervejaComputed;

  @override
  double get cerveja =>
      (_$cervejaComputed ??= Computed<double>(() => super.cerveja,
              name: 'ChurrascometroStoreBase.cerveja'))
          .value;
  Computed<double>? _$refrigeranteComputed;

  @override
  double get refrigerante =>
      (_$refrigeranteComputed ??= Computed<double>(() => super.refrigerante,
              name: 'ChurrascometroStoreBase.refrigerante'))
          .value;

  late final _$isInloadingAtom =
      Atom(name: 'ChurrascometroStoreBase.isInloading', context: context);

  @override
  bool get isInloading {
    _$isInloadingAtom.reportRead();
    return super.isInloading;
  }

  @override
  set isInloading(bool value) {
    _$isInloadingAtom.reportWrite(value, super.isInloading, () {
      super.isInloading = value;
    });
  }

  late final _$adultosAtom =
      Atom(name: 'ChurrascometroStoreBase.adultos', context: context);

  @override
  int get adultos {
    _$adultosAtom.reportRead();
    return super.adultos;
  }

  @override
  set adultos(int value) {
    _$adultosAtom.reportWrite(value, super.adultos, () {
      super.adultos = value;
    });
  }

  late final _$criancasAtom =
      Atom(name: 'ChurrascometroStoreBase.criancas', context: context);

  @override
  int get criancas {
    _$criancasAtom.reportRead();
    return super.criancas;
  }

  @override
  set criancas(int value) {
    _$criancasAtom.reportWrite(value, super.criancas, () {
      super.criancas = value;
    });
  }

  late final _$bebemAtom =
      Atom(name: 'ChurrascometroStoreBase.bebem', context: context);

  @override
  int get bebem {
    _$bebemAtom.reportRead();
    return super.bebem;
  }

  @override
  set bebem(int value) {
    _$bebemAtom.reportWrite(value, super.bebem, () {
      super.bebem = value;
    });
  }

  late final _$duracaoAtom =
      Atom(name: 'ChurrascometroStoreBase.duracao', context: context);

  @override
  int get duracao {
    _$duracaoAtom.reportRead();
    return super.duracao;
  }

  @override
  set duracao(int value) {
    _$duracaoAtom.reportWrite(value, super.duracao, () {
      super.duracao = value;
    });
  }

  late final _$useCocktailAtom =
      Atom(name: 'ChurrascometroStoreBase.useCocktail', context: context);

  @override
  bool get useCocktail {
    _$useCocktailAtom.reportRead();
    return super.useCocktail;
  }

  @override
  set useCocktail(bool value) {
    _$useCocktailAtom.reportWrite(value, super.useCocktail, () {
      super.useCocktail = value;
    });
  }

  @override
  String toString() {
    return '''
isInloading: ${isInloading},
adultos: ${adultos},
criancas: ${criancas},
bebem: ${bebem},
duracao: ${duracao},
useCocktail: ${useCocktail},
fatorDuracao: ${fatorDuracao},
criancasEquivalentes: ${criancasEquivalentes},
carne: ${carne},
linguica: ${linguica},
paoDeAlho: ${paoDeAlho},
cerveja: ${cerveja},
refrigerante: ${refrigerante}
    ''';
  }
}
