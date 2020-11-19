import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/domain/entities/trending_movie/trending_movie.dart';
import 'package:movie_app/shared/pagination.dart';

part 'trending_movie_with_pagination.g.dart';

@JsonSerializable()
class TrendingMovieWithPagination implements Pagination<TrendingMovie> {
  @override
  int page;

  @override
  List<TrendingMovie> results;

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
