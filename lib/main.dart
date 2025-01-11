import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:picanhometro/app/domain/adapter/main_adapters.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

Future<void> main() async {
  await Hive.initFlutter();
  MainAdapters.registerAdapters();

  

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
