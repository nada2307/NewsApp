import 'package:bloc/bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/data/model/news_model.dart';
import 'package:news_app/data/model/trending_news_model.dart';

import 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  static NewsCubit get(context) => BlocProvider.of(context);

  List<TrendingNewsModel> trendingNews = [
    TrendingNewsModel(
      category: 'Sports',
      text: 'Alexander wears modified helmet in road races',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlV5C6kMrHnHBblxHXqmciLg9PWc5bqHM5YA&usqp=CAU',
      date: '6 Hours',
      name: 'CNN Indonesia',
      verified: true,
    ),
    TrendingNewsModel(
      category: 'Sports',
      text: 'Alexander wears modified helmet in road races',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlV5C6kMrHnHBblxHXqmciLg9PWc5bqHM5YA&usqp=CAU',
      date: '6 Hours',
      name: 'CNN Indonesia',
      verified: true,
    ),
    TrendingNewsModel(
      category: 'Sports',
      text: 'Alexander wears modified helmet in road races',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlV5C6kMrHnHBblxHXqmciLg9PWc5bqHM5YA&usqp=CAU',
      date: '6 Hours',
      name: 'CNN Indonesia',
      verified: true,
    ),
    TrendingNewsModel(
      category: 'Sports',
      text: 'Alexander wears modified helmet in road races',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlV5C6kMrHnHBblxHXqmciLg9PWc5bqHM5YA&usqp=CAU',
      date: '6 Hours',
      name: 'CNN Indonesia',
      verified: true,
    ),
    TrendingNewsModel(
      category: 'Sports',
      text: 'Alexander wears modified helmet in road races',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlV5C6kMrHnHBblxHXqmciLg9PWc5bqHM5YA&usqp=CAU',
      date: '6 Hours',
      name: 'CNN Indonesia',
      verified: true,
    ),
  ];
  CarouselController carouselController = CarouselController();
  double indicatorIndex = 0;
  int currentIndex = 0;

  void changeIndicatorIndex(double index) {
    indicatorIndex = index;
    emit(HomeChangeIndicatorIndex());
  }

  List<NewsModel> recommendationNews = [
    NewsModel(
      category: 'Sports',
      text: 'What Training Do Volleyball Players Need?',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX7VM4JA3_WDXRwWFIgzhJIVAt4amATa9FXg&usqp=CAU',
      date: 'Fed 27,2023',
      name: 'McKindney',
      profileImage:
          'https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg',
    ),
    NewsModel(
      category: 'Education',
      text: 'Secondary school places: When do parents find out?',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJVd5i1Oa43zmcX90QGsqkwLZ8GbBvT4rpwA&usqp=CAU',
      date: 'Fed 28,2023',
      name: 'Rosemary',
      profileImage:
          'https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg',
    ),
    NewsModel(
      category: 'Sports',
      text: 'What Training Do Volleyball Players Need?',
      image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX7VM4JA3_WDXRwWFIgzhJIVAt4amATa9FXg&usqp=CAU',
      date: 'Fed 27,2023',
      name: 'McKindney',
      profileImage:
      'https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg',
    ),
    NewsModel(
      category: 'Education',
      text: 'Secondary school places: When do parents find out?',
      image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJVd5i1Oa43zmcX90QGsqkwLZ8GbBvT4rpwA&usqp=CAU',
      date: 'Fed 28,2023',
      name: 'Rosemary',
      profileImage:
      'https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg',
    ),
    NewsModel(
      category: 'Sports',
      text: 'What Training Do Volleyball Players Need?',
      image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX7VM4JA3_WDXRwWFIgzhJIVAt4amATa9FXg&usqp=CAU',
      date: 'Fed 27,2023',
      name: 'McKindney',
      profileImage:
      'https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg',
    ),
    NewsModel(
      category: 'Education',
      text: 'Secondary school places: When do parents find out?',
      image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJVd5i1Oa43zmcX90QGsqkwLZ8GbBvT4rpwA&usqp=CAU',
      date: 'Fed 28,2023',
      name: 'Rosemary',
      profileImage:
      'https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg',
    ),
  ];
}
