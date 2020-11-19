import 'package:injectable/injectable.dart';
import 'package:movie_app/data/http_client/http_client_interface.dart';
import 'package:movie_app/data/mappers/movie_mappers/get_popular_movies_response_mapper.dart';
import 'package:movie_app/data/responses/movie_responses/movie_responses.dart';
import 'package:movie_app/domain/entities/popular_movie/popular_movie_with_pagination.dart';
import 'package:movie_app/domain/repositories_interfaces/movie_repository_interface.dart';
import 'package:movie_app/environment/configuration/configuration.dart';

@Singleton(as: IMovieRepository)
class MovieRepository implements IMovieRepository {
  final IHttpClient _client;
  final Configuration _configuration;
  final GetPopularMoviesResponseMapper _getPopularMoviesResponseMapper;

  MovieRepository(
    this._client,
    this._configuration,
    this._getPopularMoviesResponseMapper,
  );

  @override
  Future<PopularMovieWithPagination> getPopularMovies([int page = 1]) async {
    final result = await _client.get(
      url: '${_configuration.moviePath}popular',
      query: {
        'page': page,
      },
    );

    return _getPopularMoviesResponseMapper.mapTo(
      PopularMoviesWithPaginationResponse.fromJson(result),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
