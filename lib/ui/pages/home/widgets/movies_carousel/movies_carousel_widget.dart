import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_app/domain/entities/movie/movie.dart';
import 'package:movie_app/ui/pages/home/home_controller.dart';
import 'package:transparent_image/transparent_image.dart';

class MovieCarouselWidget extends StatelessWidget {
  final HomeController controller;

  const MovieCarouselWidget({
    Key key,
    @required this.controller,
  }) : super(key: key);

  Widget _buildMovie(Movie movie) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            horizontal: 5.0,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: movie.posterPath,
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }

  Widget _buildDot(int index, [bool current = false]) {
    final _size = 20.0;

    return GestureDetector(
      onTap: () => controller.topPopularMoviesCarouselController.animateToPage(
        index,
      ),
      child: Container(
        height: _size,
        width: _size,
        margin: EdgeInsets.only(
          left: 5,
          right: 5,
          top: 20,
        ),
        decoration: BoxDecoration(
          color: current ? Colors.grey.shade100 : Colors.grey.shade600,
          borderRadius: BorderRadius.circular(_size / 2),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        if (controller.topPopularMoviesIsLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (controller.topPopularMoviesHasError) {
          return Center(
            child: Text(
              'Ops, something wrong happened',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          );
        }

        final movies = controller.topPopularMoviesObservable?.value ?? [];

        if (movies.isEmpty) {
          return Center(
            child: Text(
              'No movies found',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          );
        }

        return Container(
          child: Column(
            children: [
              CarouselSlider(
                carouselController:
                    controller.topPopularMoviesCarouselController,
                options: CarouselOptions(
                  autoPlay: true,
                  onPageChanged: (index, _) =>
                      controller.onTopPopularMoviesPageChanged(index),
                ),
                items: movies.map(_buildMovie).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  movies.length,
                  (index) => _buildDot(
                    index,
                    controller.currentPopularMovieIndex == index,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
