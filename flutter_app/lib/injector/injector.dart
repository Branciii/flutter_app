import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:flutter_app/injector/injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();

class Injector {
  static T locateService<T extends Object>() => GetIt.I.get<T>();
}
