// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  Computed<bool> _$genresHasErrorComputed;

  @override
  bool get genresHasError =>
      (_$genresHasErrorComputed ??= Computed<bool>(() => super.genresHasError,
              name: '_HomeController.genresHasError'))
          .value;
  Computed<bool> _$trendingMoviesHasErrorComputed;

  @override
  bool get trendingMoviesHasError => (_$trendingMoviesHasErrorComputed ??=
          Computed<bool>(() => super.trendingMoviesHasError,
              name: '_HomeController.trendingMoviesHasError'))
      .value;
  Computed<FutureStatus> _$genresStatusComputed;

  @override
  FutureStatus get genresStatus => (_$genresStatusComputed ??=
          Computed<FutureStatus>(() => super.genresStatus,
              name: '_HomeController.genresStatus'))
      .value;
  Computed<FutureStatus> _$trendingMoviesStatusComputed;

  @override
  FutureStatus get trendingMoviesStatus => (_$trendingMoviesStatusComputed ??=
          Computed<FutureStatus>(() => super.trendingMoviesStatus,
              name: '_HomeController.trendingMoviesStatus'))
      .value;
  Computed<bool> _$genreIsLoadingComputed;

  @override
  bool get genreIsLoading =>
      (_$genreIsLoadingComputed ??= Computed<bool>(() => super.genreIsLoading,
              name: '_HomeController.genreIsLoading'))
          .value;
  Computed<bool> _$trendingMoviesIsLoadingComputed;

  @override
  bool get trendingMoviesIsLoading => (_$trendingMoviesIsLoadingComputed ??=
          Computed<bool>(() => super.trendingMoviesIsLoading,
              name: '_HomeController.trendingMoviesIsLoading'))
      .value;

  final _$genresObservableAtom = Atom(name: '_HomeController.genresObservable');

  @override
  ObservableFuture<List<Genre>> get genresObservable {
    _$genresObservableAtom.reportRead();
    return super.genresObservable;
  }

  @override
  set genresObservable(ObservableFuture<List<Genre>> value) {
    _$genresObservableAtom.reportWrite(value, super.genresObservable, () {
      super.genresObservable = value;
    });
  }

  final _$trendingMoviesObservableAtom =
      Atom(name: '_HomeController.trendingMoviesObservable');

  @override
  ObservableFuture<List<TrendingMovie>> get trendingMoviesObservable {
    _$trendingMoviesObservableAtom.reportRead();
    return super.trendingMoviesObservable;
  }

  @override
  set trendingMoviesObservable(ObservableFuture<List<TrendingMovie>> value) {
    _$trendingMoviesObservableAtom
        .reportWrite(value, super.trendingMoviesObservable, () {
      super.trendingMoviesObservable = value;
    });
  }

  final _$loadingAtom = Atom(name: '_HomeController.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$_loadGenresAsyncAction = AsyncAction('_HomeController._loadGenres');

  @override
  Future<void> _loadGenres() {
    return _$_loadGenresAsyncAction.run(() => super._loadGenres());
  }

  final _$_loadTrendingMoviesAsyncAction =
      AsyncAction('_HomeController._loadTrendingMovies');

  @override
  Future<void> _loadTrendingMovies() {
    return _$_loadTrendingMoviesAsyncAction
        .run(() => super._loadTrendingMovies());
  }

  final _$_HomeControllerActionController =
      ActionController(name: '_HomeController');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
genresObservable: ${genresObservable},
trendingMoviesObservable: ${trendingMoviesObservable},
loading: ${loading},
genresHasError: ${genresHasError},
trendingMoviesHasError: ${trendingMoviesHasError},
genresStatus: ${genresStatus},
trendingMoviesStatus: ${trendingMoviesStatus},
genreIsLoading: ${genreIsLoading},
trendingMoviesIsLoading: ${trendingMoviesIsLoading}
    ''';
  }
}
