import 'package:picanhometro/app/modules/churrascometro/churrascometro_page.dart';
import 'package:picanhometro/app/modules/churrascometro/churrascometro_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChurrascometroModule extends Module {
  static const String routeName = "churrascometro-module";
 
  @override
  void binds(Injector i) {
    i.add(ChurrascometroStore.new);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => const ChurrascometroPage());
  }
}
