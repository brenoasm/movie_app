import 'package:injectable/injectable.dart';
import 'package:movie_app/data/http_client/http_client_interface.dart';
import 'package:movie_app/data/mappers/genre_mappers/get_genre_response_mapper.dart';
import 'package:movie_app/data/responses/genre_responses/genre_responses.dart';
import 'package:movie_app/domain/entities/genre/genre.dart';
import 'package:movie_app/domain/repositories_interfaces/genre_repository_interface.dart';
import 'package:movie_app/environment/configuration/configuration.dart';

@Singleton(as: IGenreRepository)
class GenreRepository implements IGenreRepository {
  final IHttpClient _client;
  final Configuration _configuration;
  final GetGenreResponseMapper _getGenreResponseMapper;

  GenreRepository(
    this._client,
    this._configuration,
    this._getGenreResponseMapper,
  );

  Future<List<Genre>> getMoviesGenres() async {
    final result = await _client.get(
      url: '${_configuration.genrePath}movie/list',
    );

    final genresResponse = (result['genres'] as List<dynamic>)
        .map(
          (e) => GetGenreResponse.fromJson(e),
        )
        .toList();

    return genresResponse
        .map(
          (e) => _getGenreResponseMapper.mapTo(e),
        )
        .toList();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
