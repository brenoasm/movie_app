import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:movie_app/environment/di/bootstrap.dart';

abstract class WidgetState<Widget extends StatefulWidget,
    Controller extends Store> extends State<Widget> {
  final Controller controller = getIt<Controller>();
}
