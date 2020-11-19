import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:movie_app/domain/entities/genre/genre.dart';
import 'package:movie_app/domain/entities/movie/movie.dart';
import 'package:movie_app/domain/usecases/get_genres_usecase.dart';
import 'package:movie_app/domain/usecases/get_top_popular_movies_usecase.dart';
import 'package:movie_app/domain/usecases/get_trending_movies_usecase.dart';
import 'package:movie_app/shared/disposeable.dart';

part 'home_controller.g.dart';

@injectable
class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store implements Disposeable {
  final GetGenresUsecase _getGenresUsecase;
  final GetTrendingMoviesUsecase _getTrendingMoviesUsecase;
  final GetTopPopularMoviesUsecase _getTopPopularMoviesUsecase;

  _HomeController(
    this._getGenresUsecase,
    this._getTrendingMoviesUsecase,
    this._getTopPopularMoviesUsecase,
  ) {
    _loadGenres();
    _loadTrendingMovies();
    _loadTopPopularMovies();
  }

  final topPopularMoviesCarouselController = CarouselController();

  @observable
  int currentPopularMovieIndex = 0;

  @observable
  ObservableFuture<List<Genre>> genresObservable;

  @observable
  ObservableFuture<List<Movie>> trendingMoviesObservable;

  @observable
  ObservableFuture<List<Movie>> topPopularMoviesObservable;

  @computed
  bool get genresHasError => genresObservable?.error != null ?? false;

  @computed
  bool get trendingMoviesHasError =>
      trendingMoviesObservable?.error != null ?? false;

  @computed
  bool get topPopularMoviesHasError =>
      topPopularMoviesObservable?.error != null ?? false;

  @computed
  FutureStatus get genresStatus => genresObservable?.status;

  @computed
  FutureStatus get trendingMoviesStatus => trendingMoviesObservable?.status;

  @computed
  FutureStatus get topPopularMoviesStatus => topPopularMoviesObservable?.status;

  @computed
  bool get genreIsLoading =>
      genresStatus != null && genresStatus == FutureStatus.pending;

  @computed
  bool get trendingMoviesIsLoading =>
      trendingMoviesStatus != null &&
      trendingMoviesStatus == FutureStatus.pending;

  @computed
  bool get topPopularMoviesIsLoading =>
      topPopularMoviesStatus != null &&
      topPopularMoviesStatus == FutureStatus.pending;

  @action
  Future<void> _loadGenres() async {
    genresObservable = _getGenresUsecase().asObservable();
  }

  @action
  Future<void> _loadTrendingMovies() async {
    trendingMoviesObservable = _getTrendingMoviesUsecase().asObservable();
  }

  @action
  Future<void> _loadTopPopularMovies() async {
    topPopularMoviesObservable = _getTopPopularMoviesUsecase().asObservable();
  }

  Future<void> onRefresh() async {
    await Future.wait([
      _loadGenres(),
      _loadTrendingMovies(),
      _loadTopPopularMovies(),
    ]);
  }

  @action
  void onTopPopularMoviesPageChanged(int index) {
    currentPopularMovieIndex = index;
  }

  @override
  void dispose() {}
}
