// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movie_with_pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularMovieWithPagination _$PopularMovieWithPaginationFromJson(
    Map<String, dynamic> json) {
  return PopularMovieWithPagination(
    page: json['page'] as int,
    results: (json['results'] as List)
        ?.map(
            (e) => e == null ? null : Movie.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    totalPages: json['totalPages'] as int,
    totalResults: json['totalResults'] as int,
  );
}

Map<String, dynamic> _$PopularMovieWithPaginationToJson(
        PopularMovieWithPagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
