import 'package:injectable/injectable.dart';
import 'package:movie_app/data/responses/genre_responses/genre_responses.dart';
import 'package:movie_app/domain/entities/genre/genre.dart';
import 'package:movie_app/shared/mapper.dart';

@injectable
class GetGenreResponseMapper implements Mapper<GetGenreResponse, Genre> {
  @override
  Genre mapTo(GetGenreResponse from) => Genre(
        id: from.id,
        name: from.name,
      );
}
