import 'package:movie_app/domain/entities/trending_movie/trending_movie_with_pagination.dart';
import 'package:movie_app/domain/enums/trending_time_window.dart';
import 'package:movie_app/shared/repository.dart';

abstract class ITrendingRepository implements Repository {
  Future<TrendingMovieWithPagination> getTrendingMovies([
    TrendingTimeWindow trendingTimeWindow = TrendingTimeWindow.DAILY,
  ]);
}
