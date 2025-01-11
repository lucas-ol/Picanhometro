import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:picanhometro/app/core/stores/global_drinks_store.dart';
 
class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final service = Modular.get<GlobalDrinksStore>();
    service.loadInitialData();
    return MaterialApp.router(
      title: 'Flutter Slidy',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
  
}
