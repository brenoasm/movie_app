import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_app/ui/pages/home/home_controller.dart';

class TrendingListWidget extends StatelessWidget {
  final HomeController controller;

  const TrendingListWidget({
    Key key,
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Container();
        // if (controller.genreIsLoading) {
        //   return Center(
        //     child: CircularProgressIndicator(),
        //   );
        // }

        // if (controller.genresHasError) {
        //   return Center(
        //     child: Text(
        //       'Ops, something wrong happened',
        //       style: Theme.of(context).textTheme.bodyText2,
        //     ),
        //   );
        // }

        // final genres = controller.genresObservable?.value ?? [];

        // if (genres.isEmpty) {
        //   return Center(
        //     child: Text(
        //       'No categories found',
        //       style: Theme.of(context).textTheme.bodyText2,
        //     ),
        //   );
        // }

        // return ListView.builder(
        //   scrollDirection: Axis.horizontal,
        //   itemCount: genres.length,
        //   itemBuilder: (context, index) {
        //     final genre = genres[index];

        //     return Container(
        //       color: index.isEven ? Colors.grey.shade700 : Colors.grey.shade400,
        //       margin: EdgeInsets.symmetric(
        //         horizontal: 10,
        //       ),
        //       width: 100,
        //       child: Center(
        //         child: Text(
        //           genre.name,
        //           style: Theme.of(context).textTheme.bodyText2.apply(
        //                 color: index.isEven
        //                     ? Colors.grey.shade100
        //                     : Colors.grey.shade900,
        //               ),
        //         ),
        //       ),
        //     );
        //   },
        // );
      },
    );
  }
}
