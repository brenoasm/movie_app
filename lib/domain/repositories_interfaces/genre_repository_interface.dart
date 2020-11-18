import 'package:movie_app/domain/entities/genre/genre.dart';
import 'package:movie_app/shared/repository.dart';

abstract class IGenreRepository implements Repository {
  Future<List<Genre>> getMoviesGenres();
}
