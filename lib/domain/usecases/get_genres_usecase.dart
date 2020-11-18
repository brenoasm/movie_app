import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/entities/genre/genre.dart';
import 'package:movie_app/domain/repositories_interfaces/genre_repository_interface.dart';
import 'package:movie_app/shared/usecase.dart';

mixin GetGenresUsecase implements Usecase {
  Future<List<Genre>> call();
}

@Injectable(as: GetGenresUsecase)
class GetGenres implements GetGenresUsecase {
  final IGenreRepository _genreRepository;

  GetGenres(this._genreRepository);

  @override
  Future<List<Genre>> call() => _genreRepository.getMoviesGenres();

  @override
  void dispose() {
    _genreRepository.dispose();
  }
}
