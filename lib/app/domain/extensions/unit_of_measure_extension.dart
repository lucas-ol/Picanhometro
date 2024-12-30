extension GramsExtension on double {
  String toKgAndGrams() {
    if (this < 1000) {
      return '${toStringAsFixed(2)} g';
    }
    final kg = this ~/ 1000; // Parte inteira dos quilos
    final grams = this % 1000; // Resto em gramas
    return grams == 0
        ? '${kg.toStringAsFixed(0)}kg'
        : '${kg.toStringAsFixed(0)}kg ${grams.toStringAsFixed(0)}g';
  }
}

extension MillilitersExtension on double {
  String toLitersAndMilliliters() {
    if (this < 1000) {
      return '${toStringAsFixed(2)} ml';
    }
    final liters = this ~/ 1000; // Parte inteira dos litros
    final milliliters = this % 1000; // Resto em mililitros
    return milliliters == 0
        ? '${liters.toStringAsFixed(0)}L'
        : '${liters.toStringAsFixed(0)}L ${milliliters.toStringAsFixed(0)}ml';
  }
}
 