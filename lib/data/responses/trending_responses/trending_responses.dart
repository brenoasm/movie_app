import 'package:json_annotation/json_annotation.dart';

part 'trending_responses.g.dart';

@JsonSerializable()
class TrendingMoviesResponse {
  int id;
  bool adult;
  @JsonKey(nullable: true, name: 'backdrop_path')
  String backdropPath;
  @JsonKey(name: 'genre_ids')
  List<int> genreIds;
  @JsonKey(name: 'original_language')
  String originalLanguage;
  @JsonKey(name: 'original_title')
  String originalTitle;
  String overview;
  @JsonKey(nullable: true, name: 'poster_path')
  String posterPath;
  @JsonKey(name: 'release_date')
  String releaseDate;
  String title;
  bool video;
  @JsonKey(name: 'vote_average')
  double voteAverage;
  @JsonKey(name: 'vote_count')
  int voteCount;
  double popularity;

  TrendingMoviesResponse({
    this.id,
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
    this.popularity,
  });

  factory TrendingMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$TrendingMoviesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingMoviesResponseToJson(this);
}

@JsonSerializable()
class TrendingMovieResponseWithPagination {
  int page;

  List<TrendingMoviesResponse> results;

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
