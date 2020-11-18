import 'package:json_annotation/json_annotation.dart';

part 'genre_responses.g.dart';

@JsonSerializable()
class GetGenreResponse {
  int id;
  String name;

  GetGenreResponse({
    this.id,
    this.name,
  });

  factory GetGenreResponse.fromJson(Map<String, dynamic> json) =>
      _$GetGenreResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetGenreResponseToJson(this);
}
