import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/entities/movie/movie.dart';
import 'package:movie_app/domain/repositories_interfaces/trending_repository_interface.dart';
import 'package:movie_app/shared/usecase.dart';

mixin GetTrendingMoviesUsecase implements Usecase {
  Future<List<Movie>> call();
}

@Injectable(as: GetTrendingMoviesUsecase)
class GetTrendingMovies implements GetTrendingMoviesUsecase {
  final ITrendingRepository _trendingRepository;

  GetTrendingMovies(this._trendingRepository);

  @override
  Future<List<Movie>> call() async {
    final trendingMoviesWithPagination =
        await _trendingRepository.getTrendingMovies();

    return trendingMoviesWithPagination.results;
  }

  @override
  void dispose() {
    _trendingRepository.dispose();
  }
}
