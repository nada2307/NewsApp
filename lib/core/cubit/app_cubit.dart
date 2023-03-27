import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:news_app/core/app_icon_icons.dart';
import 'package:news_app/presentation/screens/home.dart';

import 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);
int currentIndex = 0;

  List<GButton> taps = [
    const GButton(
      icon: AppIcon.home,
      text: 'Home',
    ),
    const GButton(
      icon: AppIcon.globe_2,
      text: 'Global',
    ),
    const GButton(
      icon: AppIcon.bookmark_border,
      text: 'Saved',
    ),
    const GButton(
      icon: AppIcon.user,
      text: 'Profile',
    ),
  ];

  List<Widget> screens = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];

  void changeBottomVarIndex(int index){
    currentIndex = index;
    emit(changeBottomVarIndexState());
  }
}
