import 'package:injectable/injectable.dart';
import 'package:movie_app/data/responses/trending_responses/trending_responses.dart';
import 'package:movie_app/domain/entities/trending_movie/trending_movie.dart';
import 'package:movie_app/domain/entities/trending_movie/trending_movie_with_pagination.dart';
import 'package:movie_app/environment/configuration/configuration.dart';
import 'package:movie_app/shared/mapper.dart';

@injectable
class GetTrendingMoviesResponseMapper
    implements
        Mapper<TrendingMovieResponseWithPagination,
            TrendingMovieWithPagination> {
  final Configuration _configuration;

  GetTrendingMoviesResponseMapper(this._configuration);

  @override
  TrendingMovieWithPagination mapTo(TrendingMovieResponseWithPagination from) =>
      TrendingMovieWithPagination(
        results: from.results
            .map(
              (e) => TrendingMovie(
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
