import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/maneger/cubit/news_cubit.dart';
import 'package:news_app/presentation/maneger/cubit/news_state.dart';
import 'package:news_app/presentation/widgets/banner_row_widget.dart';
import 'package:news_app/presentation/widgets/carousel_slider_widget.dart';
import 'package:news_app/presentation/widgets/news_list_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = NewsCubit.get(context);
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              BannerRowWidget(
                text: 'Breaking News',
                onPress: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              CarouselSliderWidget(
                cubit: cubit,
              ),
              const SizedBox(
                height: 10,
              ),
              BannerRowWidget(
                text: 'Recommendation',
                onPress: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => NewsListItemWidget(
                    newsModel: cubit.recommendationNews[index],
                  ),
                  itemCount: cubit.recommendationNews.length,
                  shrinkWrap: true,
                  separatorBuilder: (context, int index) => const SizedBox(
                    height: 10,
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
