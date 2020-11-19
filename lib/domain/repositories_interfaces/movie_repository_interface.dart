import 'package:movie_app/domain/entities/popular_movie/popular_movie_with_pagination.dart';
import 'package:movie_app/shared/repository.dart';

abstract class IMovieRepository implements Repository {
  Future<PopularMovieWithPagination> getPopularMovies([int page = 1]);
}
