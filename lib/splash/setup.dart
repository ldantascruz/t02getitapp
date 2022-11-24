import 'package:get_it/get_it.dart';
import 'package:getit_app/home/home_controller.dart';
import 'package:getit_app/home/home_repository.dart';

class SetupProject {
  static void setup() {
    GetIt getIt = GetIt.instance;

    getIt.registerFactory<HomeRepository>(
      () => HomeRepository(),
    );

    getIt.registerSingleton<HomeController>(
      HomeController(
        GetIt.I.get<HomeRepository>(),
      ),
    );
  }

  static void dispose() {
    GetIt.I.unregister<HomeController>();
    GetIt.I.unregister<HomeRepository>();
  }
}
