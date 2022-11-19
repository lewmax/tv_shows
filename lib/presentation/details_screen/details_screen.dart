import 'package:flutter/material.dart';
import 'package:tv_shows/domain/tv_show/tv_show.dart';
import 'package:tv_shows/presentation/resources/color_manager.dart';
import 'package:tv_shows/presentation/resources/values_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsScreen extends StatelessWidget {
  final TvShow tvShow;

  const DetailsScreen({Key? key, required this.tvShow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              fit: StackFit.loose,
              children: [
                Container(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.3,
                  ),
                  child: Image.network(
                    fit: BoxFit.cover,
                    tvShow.imageUrlOriginal,
                  ),
                ),
                Positioned(
                  top: AppSize.s28,
                  left: AppSize.s12,
                  child: IconButton(
                    color: ColorManager.white,
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    tvShow.name.toUpperCase(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tvShow.status,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star,
                            color: ColorManager.primary,
                            size: AppSize.s28,
                          ),
                          Text(
                            '${tvShow.rating}/10',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () async {
                          final url = Uri.parse(tvShow.url);
                          await launchUrl(url);
                        },
                        child: Text('Watch Here'),
                      ),
                    ],
                  ),
                  Row(
                    children: tvShow.genres
                        .map(
                          (genre) => Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppPadding.p4),
                            child: Chip(
                              backgroundColor: ColorManager.darkPrimary,
                              label: Text(
                                genre,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              padding: const EdgeInsets.all(AppPadding.p4),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: AppSize.s18),
                  Text(
                    'Schedule: ${tvShow.schedule}',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(height: AppSize.s18),
                  Text(
                    tvShow.summary,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
