// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../configuration/configuration.dart';
import '../../data/repositories/genre_repository.dart';
import '../../data/mappers/genre_mappers/get_genre_response_mapper.dart';
import '../../domain/usecases/get_genres_usecase.dart';
import '../../ui/pages/home/home_controller.dart';
import '../../data/http_client/http_client.dart';
import '../../domain/repositories_interfaces/genre_repository_interface.dart';
import '../../data/http_client/http_client_interface.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

extension GetItInjectableX on GetIt {
  GetIt init({
    String environment,
    EnvironmentFilter environmentFilter,
  }) {
    final gh = GetItHelper(this, environment, environmentFilter);
    gh.factory<GetGenreResponseMapper>(() => GetGenreResponseMapper());
    gh.factory<GetGenresUsecase>(() => GetGenres(get<IGenreRepository>()));
    gh.factory<HomeController>(() => HomeController(get<GetGenresUsecase>()));

    // Eager singletons must be registered in the right order
    gh.singleton<IHttpClient>(HttpClient(get<Configuration>()));
    gh.singleton<IGenreRepository>(GenreRepository(
      get<IHttpClient>(),
      get<Configuration>(),
      get<GetGenreResponseMapper>(),
    ));
    return this;
  }
}
