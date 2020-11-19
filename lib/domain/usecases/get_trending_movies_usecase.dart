import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/entities/trending_movie/trending_movie.dart';
import 'package:movie_app/domain/repositories_interfaces/trending_repository_interface.dart';
import 'package:movie_app/shared/usecase.dart';

mixin GetTrendingMoviesUsecase implements Usecase {
  Future<List<TrendingMovie>> call();
}

@Injectable(as: GetTrendingMoviesUsecase)
class GetTrendingMovies implements GetTrendingMoviesUsecase {
  final ITrendingRepository _trendingRepository;

  GetTrendingMovies(this._trendingRepository);

  @override
  Future<List<TrendingMovie>> call() async {
    final trendingMoviesWithPagination =
        await _trendingRepository.getTrendingMovies();

    return trendingMoviesWithPagination.results;
  }

  @override
  void dispose() {
    _trendingRepository.dispose();
  }
}
