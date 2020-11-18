// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  Computed<FutureStatus> _$genresStatusComputed;

  @override
  FutureStatus get genresStatus => (_$genresStatusComputed ??=
          Computed<FutureStatus>(() => super.genresStatus,
              name: '_HomeController.genresStatus'))
      .value;
  Computed<bool> _$genreIsLoadingComputed;

  @override
  bool get genreIsLoading =>
      (_$genreIsLoadingComputed ??= Computed<bool>(() => super.genreIsLoading,
              name: '_HomeController.genreIsLoading'))
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
loading: ${loading},
genresStatus: ${genresStatus},
genreIsLoading: ${genreIsLoading}
    ''';
  }
}
