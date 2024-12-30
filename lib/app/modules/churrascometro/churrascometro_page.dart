import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:picanhometro/app/domain/extensions/unit_of_measure_extension.dart';
import 'package:picanhometro/app/modules/churrascometro/churrascometro_store.dart';
import 'package:flutter/material.dart';

class ChurrascometroPage extends StatefulWidget {
  final String title;
  const ChurrascometroPage({super.key, this.title = 'ChurrascometroPage'});
  @override
  ChurrascometroPageState createState() => ChurrascometroPageState();
}

class ChurrascometroPageState extends State<ChurrascometroPage> {
  late final ChurrascometroStore store;
  @override
  void initState() {
    super.initState();
    store = Modular.get<ChurrascometroStore>();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Quantidade de Adultos'),
                keyboardType: TextInputType.number,
                onChanged: (value) => store.adultos = int.tryParse(value) ?? 0,
                validator: (value) =>
                    value!.isEmpty ? 'Digite o número de adultos' : null,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Quantidade de Crianças'),
                keyboardType: TextInputType.number,
                onChanged: (value) => store.criancas = int.tryParse(value) ?? 0,
                validator: (value) =>
                    value!.isEmpty ? 'Digite o número de crianças' : null,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Quantidade que Bebem'),
                keyboardType: TextInputType.number,
                onChanged: (value) => store.bebem = int.tryParse(value) ?? 0,
                validator: (value) => value!.isEmpty
                    ? 'Digite o número de pessoas que bebem'
                    : null,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Duração (em horas)'),
                keyboardType: TextInputType.number,
                onChanged: (value) => store.duracao = int.tryParse(value) ?? 0,
                validator: (value) =>
                    value!.isEmpty ? 'Digite a duração do churrasco' : null,
              ),
              Observer(
                builder: (_) {
                  return CheckboxListTile(
                    title: const Text("Usar Coquetel"),
                    value: store.useCocktail,
                    onChanged: (checked) => store.useCocktail = checked!,
                  );
                },
              ),
              Observer(builder: (_) {
                if (!store.useCocktail) {
                  return const SizedBox();
                }
                return const Column(
                  children: [
                    Text('Adicionar destilados'),
                    Text('Whisky, vodka, etc.'),
                  ],
                );
              }),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    FocusScope.of(context).unfocus(); // Fecha o teclado
                  }
                },
                child: const Text('Calcular'),
              ),
              const SizedBox(height: 16),
              Observer(
                builder: (_) => Text(
                  '''
                  Carne: ${store.carne.toKgAndGrams()} 
                  Linguiça: ${store.linguica.toKgAndGrams()} 
                  Pão de Alho: ${store.paoDeAlho.toKgAndGrams()} 
                  Cerveja: ${store.cerveja.toLitersAndMilliliters()} 
                  Refrigerante/Água: ${store.refrigerante.toLitersAndMilliliters()} 
                  ''',
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
