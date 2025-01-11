import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:picanhometro/app/modules/churrascometro/churrascometro_module.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, this.title = 'Home'});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late final HomeStore _store;

  @override
  void initState() {
    super.initState();
    _store = Modular.get<HomeStore>();
    _store.loadDrinks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () =>
                  Modular.to.pushNamed("${ChurrascometroModule.routeName}/"),
              child: const Text("Churrascometro"),
            ),
            Observer(
              builder: (_) {
                final drinks = _store.drinks;
                return Column(
                  children: drinks
                      .map((x) => Row(
                            children: [
                              Text(x.name),
                            ],
                          ))
                      .toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
