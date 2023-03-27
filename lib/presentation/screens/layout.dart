import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:news_app/core/app_icon_icons.dart';
import 'package:news_app/core/cubit/app_cubit.dart';
import 'package:news_app/core/cubit/app_state.dart';
import 'package:news_app/presentation/widgets/app_bar_icon_widget.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            AppBarIconWidget(icon: AppIcon.menu, onPressed: () {}),
          ],
        ),
        actions: [
          AppBarIconWidget(icon: AppIcon.search, onPressed: () {}),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AppBarIconWidget(
                icon: AppIcon.notifications_none, onPressed: () {}),
          ),
        ],
      ),
      body: BlocBuilder<AppCubit, AppState>(
          builder: (context, state) => cubit.screens[cubit.currentIndex]),
      bottomNavigationBar: GNav(
        onTabChange: (index) {
          cubit.changeBottomVarIndex(index);
        },
        padding: const EdgeInsets.all(10),
        tabMargin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        gap: 3,
        tabBackgroundColor: Colors.indigoAccent,
        color: Colors.grey,
        activeColor: Colors.white,
        tabs: cubit.taps,
      ),
    );
  }
}
