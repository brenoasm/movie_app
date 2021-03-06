import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/domain/entities/movie/movie.dart';
import 'package:movie_app/shared/pagination.dart';

part 'trending_movie_with_pagination.g.dart';

@JsonSerializable()
class TrendingMovieWithPagination implements Pagination<Movie> {
  @override
  int page;

  @override
  List<Movie> results;

  @override
  int totalPages;

  @override
  int totalResults;

  TrendingMovieWithPagination({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory TrendingMovieWithPagination.fromJson(Map<String, dynamic> json) =>
      _$TrendingMovieWithPaginationFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingMovieWithPaginationToJson(this);
}
