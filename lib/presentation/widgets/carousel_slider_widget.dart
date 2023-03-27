import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/presentation/maneger/cubit/news_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselSliderWidget extends StatelessWidget {
 final NewsCubit cubit ;

  const CarouselSliderWidget({Key? key,required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Column(
      children: [
        CarouselSlider(
          carouselController: cubit.carouselController,
          items: cubit.trendingNews
              .map(
                (e) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const RadialGradient(
                        center: Alignment.topLeft,
                        radius: 1.0,
                        colors: <Color>[Colors.grey, Colors.grey],
                        tileMode: TileMode.mirror,
                      ).createShader(bounds);
                    },
                    child: Image(
                      image: NetworkImage(
                        e.image,
                      ),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 10,
                      right: 50,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 25,
                          width: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              color: Colors.indigoAccent,
                              borderRadius:
                              BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              e.category,
                              style: const TextStyle(
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Text(
                              e.name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Icon(
                              Icons.verified,
                              size: 15,
                              color: Colors.indigoAccent,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.circle_rounded,
                              size: 5,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              e.date,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          e.text,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
              .toList(),
          options: CarouselOptions(
            onPageChanged: (index, page) {
              cubit.changeIndicatorIndex(index.toDouble());
            },
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            clipBehavior: Clip.antiAlias,
            aspectRatio: 2.5,
            enableInfiniteScroll: true,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SmoothIndicator(
          offset: cubit.indicatorIndex,
          count: cubit.trendingNews.length,
          effect: const ExpandingDotsEffect(
            dotWidth: 12,
              dotHeight: 12,
              expansionFactor: 2,
              spacing: 3,
              strokeWidth: 5,
              activeDotColor: Colors.indigoAccent),
        ),
      ],
    );
  }
}
