import 'package:json_annotation/json_annotation.dart';

part 'trending_movie.g.dart';

@JsonSerializable()
class TrendingMovie {
  int id;
  bool adult;
  @JsonKey(nullable: true)
  String backdropPath;
  List<int> genreIds;
  String originalLanguage;
  String originalTitle;
  String overview;
  @JsonKey(nullable: true)
  String posterPath;
  String releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;
  double popularity;

  TrendingMovie({
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

  factory TrendingMovie.fromJson(Map<String, dynamic> json) =>
      _$TrendingMovieFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingMovieToJson(this);
}
