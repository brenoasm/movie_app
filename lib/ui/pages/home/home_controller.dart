import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:movie_app/domain/entities/genre/genre.dart';
import 'package:movie_app/domain/usecases/get_genres_usecase.dart';
import 'package:movie_app/shared/disposeable.dart';

part 'home_controller.g.dart';

@injectable
class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store implements Disposeable {
  final GetGenresUsecase _getGenresUsecase;

  _HomeController(this._getGenresUsecase) {
    _loadGenres();
  }

  @observable
  ObservableFuture<List<Genre>> genresObservable;

  bool get genresHasError => genresObservable?.error != null ?? false;

  @computed
  FutureStatus get genresStatus => genresObservable?.status;

  @computed
  bool get genreIsLoading =>
      genresStatus != null && genresStatus == FutureStatus.pending;

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value) => loading = value;

  @action
  Future<void> _loadGenres() async {
    genresObservable = _getGenresUsecase().asObservable();
  }

  @override
  void dispose() {}
}
