import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: EdgeInsets.only(
            right: 10,
          ),
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ),
      ],
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Movie',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'App',
            style: Theme.of(context).textTheme.headline5.apply(
                  color: Theme.of(context).accentColor,
                ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
