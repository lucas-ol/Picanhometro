import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:crypto/crypto.dart';

/// Classe utilitária para geração de hash a partir de JSON.
class JsonHasher {
  /// Lê um arquivo JSON dos assets e retorna seu conteúdo como String.
  static Future<String> _loadJson(String path) async {
    try {
      return await rootBundle.loadString(path);
    } catch (e) {
      throw Exception('Erro ao carregar JSON dos assets: $e');
    }
  }

  /// Gera uma hash SHA256 a partir do JSON no caminho especificado.
  static Future<String> generateHash(String jsonPath) async {
    final jsonString = await _loadJson(jsonPath);

    // Gera os bytes UTF-8 do JSON.
    final bytes = utf8.encode(jsonString);

    // Calcula a hash usando SHA256.
    final hash = sha256.convert(bytes);

    return hash.toString();
  }
}
