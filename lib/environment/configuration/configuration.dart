import 'package:injectable/injectable.dart';

class Configuration {
  String apiBaseUrl;
  String apiKey;
  String imageUrl;

  String genrePath;
  String trendingPath;
  String moviePath;

  Configuration(@factoryParam Map<String, dynamic> map) {
    apiBaseUrl = map['BASE_API_URL'];
    apiKey = map['API_KEY'];
    imageUrl = map['IMAGE_URL'];

    genrePath = map['GENRE_PATH'];
    trendingPath = map['TRENDING_PATH'];
    moviePath = map['MOVIE_PATH'];
  }
}
