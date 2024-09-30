import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:whitemouse_play/common/utils.dart';
import 'package:whitemouse_play/models/tv_series_model.dart';
import 'package:whitemouse_play/widgets/landing_card.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    required this.data,
  });
  final TvSeriesModel data;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var carouselOptions = CarouselOptions(
      height: (size.height * 0.33 < 500) ? 500 : size.height * 0.33,
      aspectRatio: 16 / 9,
      viewportFraction: 1,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 5),
      autoPlayAnimationDuration: const Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
    );
    return SizedBox(
      width: size.width,
      height: (size.height * 0.33 < 500) ? 500 : size.height * 0.33,
      child: CarouselSlider.builder(
        itemCount: data.results.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          var url = data.results[index].backdropPath.toString();
          return GestureDetector(
            onTap: () {},
            child: LandingCard(
              image: CachedNetworkImageProvider("$imageUrl$url"),
              name: data.results[index].name.toString(),
            ),
          );
        },
        options: carouselOptions,
      ),
    );
  }
}