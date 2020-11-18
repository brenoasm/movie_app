import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/environment/configuration/configuration.dart';

import 'package:movie_app/environment/di/bootstrap.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDI({
  String env,
  EnvironmentFilter environmentFilter,
}) async {
  getIt.registerLazySingleton<Configuration>(() => Configuration(DotEnv().env));

  getIt.init(environmentFilter: environmentFilter);
}
