import 'package:flutter_modular/flutter_modular.dart';
import 'package:picanhometro/app/domain/services/churracometro/churracometro.dart';
import 'package:picanhometro/app/domain/services/churracometro/i_churracometro.dart';
import 'package:picanhometro/app/modules/churrascometro/churrascometro_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {

 @override
  void binds(Injector i) {
    i.add<IChurracometro>(Churracometro.new);
  }

 
@override
  void routes(RouteManager r) {
    r.module('/', module: HomeModule());
    r.module('/${ChurrascometroModule.routeName}', module: ChurrascometroModule());
  } 
 
 
}