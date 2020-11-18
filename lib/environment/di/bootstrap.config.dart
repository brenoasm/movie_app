// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../configuration/configuration.dart';
import '../../domain/repositories_interfaces/example_repository.dart';
import '../../domain/usecases/example_usecase.dart';
import '../../ui/pages/home/home_controller.dart';
import '../../data/http_client/http_client.dart';
import '../../data/repositories_interfaces/example_repository_interface.dart';
import '../../data/http_client/http_client_interface.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

extension GetItInjectableX on GetIt {
  GetIt init({
    String environment,
    EnvironmentFilter environmentFilter,
  }) {
    final gh = GetItHelper(this, environment, environmentFilter);
    gh.factory<ExampleUsageUsecase>(
        () => ExampleUsage(get<IExampleRepository>()));
    gh.factory<HomeController>(
        () => HomeController(get<ExampleUsageUsecase>()));

    // Eager singletons must be registered in the right order
    gh.singleton<IExampleRepository>(ExampleRepository());
    gh.singleton<IHttpClient>(HttpClient(get<Configuration>()));
    return this;
  }
}
