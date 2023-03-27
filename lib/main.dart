import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/cubit/app_cubit.dart';
import 'package:news_app/presentation/screens/layout.dart';

import 'presentation/maneger/cubit/news_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit(),
        ),
        BlocProvider(
          create: (context) => NewsCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(

          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            elevation: 0.0,
            backgroundColor: Colors.white,
          ),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: const AppLayout(),
      ),
    );
  }
}
