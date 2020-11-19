import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_app/shared/widget_state.dart';
import 'package:movie_app/ui/pages/home/home_controller.dart';
import 'package:movie_app/ui/pages/home/widgets/genre_list/genre_list_widget.dart';
import 'package:movie_app/ui/pages/home/widgets/home_appbar/home_appbar_widget.dart';
import 'package:movie_app/ui/pages/home/widgets/movies_carousel/movies_carousel_widget.dart';
import 'package:movie_app/ui/pages/home/widgets/section_container/section_container_widget.dart';
import 'package:movie_app/ui/pages/home/widgets/trending_list/trending_list_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends WidgetState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: HomeAppbarWidget(),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return RefreshIndicator(
              onRefresh: controller.onRefresh,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Container(
                  child: Column(
                    children: [
                      SectionContainerWidget(
                        margin: EdgeInsets.only(
                          top: constraints.maxHeight * 0.05,
                        ),
                        height: constraints.maxHeight * 0.40,
                        child: MovieCarouselWidget(
                          controller: controller,
                        ),
                      ),
                      SectionContainerWidget(
                        title: 'Categories',
                        margin: EdgeInsets.only(
                          top: constraints.maxHeight * 0.01,
                        ),
                        height: constraints.maxHeight * 0.15,
                        child: GenreListWidget(
                          controller: controller,
                        ),
                      ),
                      SectionContainerWidget(
                        title: 'Trending',
                        // titleButtonText: 'More',
                        // onTitleButtonPressed: () {},
                        margin: EdgeInsets.only(
                          top: constraints.maxHeight * 0.01,
                        ),
                        height: constraints.maxHeight * 0.35,
                        child: TrendingListWidget(
                          controller: controller,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
