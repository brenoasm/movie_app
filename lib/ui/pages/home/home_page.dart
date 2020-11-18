import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_app/shared/widget_state.dart';
import 'package:movie_app/ui/pages/home/home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends WidgetState<HomePage, HomeController> {
  Widget _buildSomeText() {
    final someText = controller.someTextObservable?.value ?? '';

    return Text(
      someText,
      style: TextStyle(fontSize: 24),
      textAlign: TextAlign.center,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Hey!'),
                RaisedButton(
                  child: Text('Click me'),
                  onPressed: () {
                    controller.onPressed();
                  },
                ),
                _buildSomeText(),
              ],
            ),
          );
        },
      ),
    );
  }
}
