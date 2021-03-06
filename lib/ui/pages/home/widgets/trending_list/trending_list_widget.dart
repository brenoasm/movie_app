import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_app/ui/pages/home/home_controller.dart';
import 'package:transparent_image/transparent_image.dart';

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
        if (controller.trendingMoviesIsLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (controller.trendingMoviesHasError) {
          return Center(
            child: Text(
              'Ops, something wrong happened',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          );
        }

        final trendingMovies = controller.trendingMoviesObservable?.value ?? [];

        if (trendingMovies.isEmpty) {
          return Center(
            child: Text(
              'No trending movies found',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          );
        }

        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: trendingMovies.length,
          cacheExtent: 500,
          itemBuilder: (context, index) {
            final trendingMovie = trendingMovies[index];

            return Container(
              key: Key(trendingMovie.id.toString()),
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: trendingMovie.posterPath,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
