import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:movie_app/domain/entities/genre/genre.dart';
import 'package:movie_app/domain/entities/trending_movie/trending_movie.dart';
import 'package:movie_app/domain/usecases/get_genres_usecase.dart';
import 'package:movie_app/domain/usecases/get_trending_movies_usecase.dart';
import 'package:movie_app/shared/disposeable.dart';

part 'home_controller.g.dart';

@injectable
class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store implements Disposeable {
  final GetGenresUsecase _getGenresUsecase;
  final GetTrendingMoviesUsecase _getTrendingMoviesUsecase;

  _HomeController(this._getGenresUsecase, this._getTrendingMoviesUsecase) {
    _loadGenres();
    _loadTrendingMovies();
  }

  @observable
  ObservableFuture<List<Genre>> genresObservable;

  @observable
  ObservableFuture<List<TrendingMovie>> trendingMoviesObservable;

  @computed
  bool get genresHasError => genresObservable?.error != null ?? false;

  @computed
  bool get trendingMoviesHasError =>
      trendingMoviesObservable?.error != null ?? false;

  @computed
  FutureStatus get genresStatus => genresObservable?.status;

  @computed
  FutureStatus get trendingMoviesStatus => trendingMoviesObservable?.status;

  @computed
  bool get genreIsLoading =>
      genresStatus != null && genresStatus == FutureStatus.pending;

  @computed
  bool get trendingMoviesIsLoading =>
      trendingMoviesStatus != null &&
      trendingMoviesStatus == FutureStatus.pending;

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value) => loading = value;

  @action
  Future<void> _loadGenres() async {
    genresObservable = _getGenresUsecase().asObservable();
  }

  @action
  Future<void> _loadTrendingMovies() async {
    trendingMoviesObservable = _getTrendingMoviesUsecase().asObservable();
  }

  Future<void> onRefresh() async {
    await Future.wait([
      _loadGenres(),
      _loadTrendingMovies(),
    ]);
  }

  @override
  void dispose() {}
}
