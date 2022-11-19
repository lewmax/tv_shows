import 'package:flutter/material.dart';
import 'package:tv_shows/domain/tv_show/tv_show.dart';

import '../../details_screen/details_screen.dart';
import '../../resources/color_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/values_manager.dart';

class GridItem extends StatelessWidget {
  final TvShow tvShow;

  const GridItem({super.key, required this.tvShow});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => DetailsScreen(
              tvShow: tvShow,
            ),
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s18),
            child: Image.network(
              tvShow.imageUrlMedium,
            ),
          ),
          Text(
            tvShow.name,
            style: Theme.of(context).textTheme.headline6,
          ),
          Row(
            children: [
              Icon(Icons.star, color: ColorManager.primaryOpacity70),
              Text(
                '${tvShow.rating}/10',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
