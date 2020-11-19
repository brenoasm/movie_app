import 'package:injectable/injectable.dart';
import 'package:movie_app/data/http_client/http_client_interface.dart';
import 'package:movie_app/data/mappers/trending_mappers/get_trending_movies_response_mapper.dart';
import 'package:movie_app/data/responses/trending_responses/trending_responses.dart';
import 'package:movie_app/domain/entities/trending_movie/trending_movie_with_pagination.dart';
import 'package:movie_app/domain/enums/trending_time_window.dart';
import 'package:movie_app/domain/repositories_interfaces/trending_repository_interface.dart';
import 'package:movie_app/environment/configuration/configuration.dart';

@Singleton(as: ITrendingRepository)
class TrendingRepository implements ITrendingRepository {
  final IHttpClient _client;
  final Configuration _configuration;
  final GetTrendingMoviesResponseMapper _getTrendingMoviesResponseMapper;

  TrendingRepository(
    this._client,
    this._configuration,
    this._getTrendingMoviesResponseMapper,
  );

  @override
  Future<TrendingMovieWithPagination> getTrendingMovies([
    TrendingTimeWindow trendingTimeWindow = TrendingTimeWindow.DAILY,
  ]) async {
    final result = await _client.get(
      url: '${_configuration.trendingPath}movie/${trendingTimeWindow.value}',
    );

    return _getTrendingMoviesResponseMapper.mapTo(
      TrendingMovieResponseWithPagination.fromJson(result),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
