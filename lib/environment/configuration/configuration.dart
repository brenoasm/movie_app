import 'package:injectable/injectable.dart';

class Configuration {
  String apiBaseUrl;
  String apiKey;
  String genrePath;

  Configuration(@factoryParam Map<String, dynamic> map) {
    apiBaseUrl = map['BASE_API_URL'];
    apiKey = map['API_KEY'];
    genrePath = map['GENRE_PATH'];
  }
}
