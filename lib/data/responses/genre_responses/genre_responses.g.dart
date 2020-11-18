// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGenreResponse _$GetGenreResponseFromJson(Map<String, dynamic> json) {
  return GetGenreResponse(
    id: json['id'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$GetGenreResponseToJson(GetGenreResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
