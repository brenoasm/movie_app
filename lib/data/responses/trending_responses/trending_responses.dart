import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/data/models/movie.dart';

part 'trending_responses.g.dart';

@JsonSerializable()
class TrendingMovieResponseWithPagination {
  int page;

  List<Movie> results;

  @JsonKey(name: 'total_pages')
  int totalPages;

  @JsonKey(name: 'total_results')
  int totalResults;

  TrendingMovieResponseWithPagination({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory TrendingMovieResponseWithPagination.fromJson(
          Map<String, dynamic> json) =>
      _$TrendingMovieResponseWithPaginationFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TrendingMovieResponseWithPaginationToJson(this);
}
