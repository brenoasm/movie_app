import 'package:injectable/injectable.dart';
import 'package:movie_app/data/responses/movie_responses/movie_responses.dart';
import 'package:movie_app/domain/entities/movie/movie.dart';
import 'package:movie_app/domain/entities/popular_movie/popular_movie_with_pagination.dart';
import 'package:movie_app/environment/configuration/configuration.dart';
import 'package:movie_app/shared/mapper.dart';

@injectable
class GetPopularMoviesResponseMapper
    implements
        Mapper<PopularMoviesWithPaginationResponse,
            PopularMovieWithPagination> {
  final Configuration _configuration;

  GetPopularMoviesResponseMapper(this._configuration);

  @override
  PopularMovieWithPagination mapTo(PopularMoviesWithPaginationResponse from) =>
      PopularMovieWithPagination(
        page: from.page,
        totalPages: from.totalPages,
        totalResults: from.totalResults,
        results: from.results
            .map(
              (e) => Movie(
                adult: e.adult,
                backdropPath: _configuration.imageUrl + (e.backdropPath ?? ''),
                genreIds: e.genreIds,
                id: e.id,
                originalLanguage: e.originalLanguage,
                originalTitle: e.originalTitle,
                overview: e.overview,
                popularity: e.popularity,
                posterPath: _configuration.imageUrl + (e.posterPath ?? ''),
                releaseDate: e.releaseDate,
                title: e.title,
                video: e.video,
                voteAverage: e.voteAverage,
                voteCount: e.voteCount,
              ),
            )
            .toList(),
      );
}
