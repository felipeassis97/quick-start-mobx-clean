import 'package:flutter_modular/flutter_modular.dart';
import 'package:quickstart_tdd/modules/profile/profile_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: ProfileModule(),
          transition: TransitionType.rightToLeftWithFade,
        ),
      ];
}
