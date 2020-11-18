import 'package:injectable/injectable.dart';

class Configuration {
  String apiBaseUrl;
  String apiKey;
  String titlePath;
  String actorPath;

  Configuration(@factoryParam Map<String, dynamic> map) {
    apiBaseUrl = map['IMDB_BASE_URL'];
    apiKey = map['IMDB_APP_KEY'];
    titlePath = map['IMDB_TITLE_PATH'];
    actorPath = map['IMDB_ACTOR_PATH'];
  }
}
