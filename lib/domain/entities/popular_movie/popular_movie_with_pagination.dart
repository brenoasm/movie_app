import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/domain/entities/movie/movie.dart';
import 'package:movie_app/shared/pagination.dart';

part 'popular_movie_with_pagination.g.dart';

@JsonSerializable()
class PopularMovieWithPagination implements Pagination<Movie> {
  @override
  int page;

  @override
  List<Movie> results;

  @override
  int totalPages;

  @override
  int totalResults;

  PopularMovieWithPagination({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory PopularMovieWithPagination.fromJson(Map<String, dynamic> json) =>
      _$PopularMovieWithPaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PopularMovieWithPaginationToJson(this);
}
