import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:movie_app/environment/di/bootstrap.dart';

import 'package:movie_app/ui/pages/home/home_page.dart';
import 'package:movie_app/ui/themes/dark_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DotEnv().load('envs/.env');
  await configureDI();

  return runZonedGuarded(() {
    runApp(
      App(),
    );
  }, (error, stackTrace) {
    print(error);
  });
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      theme: darkTheme(context),
      home: HomePage(),
    );
  }
}
