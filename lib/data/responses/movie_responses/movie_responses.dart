import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/data/models/movie.dart';

part 'movie_responses.g.dart';

@JsonSerializable()
class PopularMoviesWithPaginationResponse {
  int page;

  List<Movie> results;

  @JsonKey(name: 'total_pages')
  int totalPages;

  @JsonKey(name: 'total_results')
  int totalResults;

  PopularMoviesWithPaginationResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory PopularMoviesWithPaginationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$PopularMoviesWithPaginationResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PopularMoviesWithPaginationResponseToJson(this);
}
