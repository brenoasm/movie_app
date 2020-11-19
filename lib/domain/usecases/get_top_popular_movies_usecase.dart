import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/entities/movie/movie.dart';
import 'package:movie_app/domain/repositories_interfaces/movie_repository_interface.dart';
import 'package:movie_app/shared/usecase.dart';

mixin GetTopPopularMoviesUsecase implements Usecase {
  Future<List<Movie>> call();
}

@Injectable(as: GetTopPopularMoviesUsecase)
class GetTopPopularMovies implements GetTopPopularMoviesUsecase {
  final IMovieRepository _movieRepository;

  GetTopPopularMovies(this._movieRepository);

  @override
  Future<List<Movie>> call() async {
    final popularMoviesWithPagination =
        await _movieRepository.getPopularMovies();

    return popularMoviesWithPagination.results.take(5).toList();
  }

  @override
  void dispose() {
    _movieRepository.dispose();
  }
}
