import 'package:injectable/injectable.dart';

class Configuration {
  String apiBaseUrl;
  String apiKey;
  String genrePath;
  String trendingPath;
  String imageUrl;

  Configuration(@factoryParam Map<String, dynamic> map) {
    apiBaseUrl = map['BASE_API_URL'];
    apiKey = map['API_KEY'];
    genrePath = map['GENRE_PATH'];
    trendingPath = map['TRENDING_PATH'];
    imageUrl = map['IMAGE_URL'];
  }
}
