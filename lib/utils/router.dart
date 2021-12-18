import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_demo/screens/games/game_screen.dart';
import 'package:game_demo/screens/home/home_cubits/game_cubit/game_cubit.dart';
import 'package:game_demo/screens/home/home_screen.dart';
import 'package:game_demo/utils/screens.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<GameCubit>(
            create: (BuildContext context) => GameCubit(),
            child: const GameScreen(),
          ),
          settings: settings,
        );
      case Screen.game_screen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<GameCubit>(
            create: (BuildContext context) => GameCubit(),
            child: const GameScreen(),
          ),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<GameCubit>(
            create: (BuildContext context) => GameCubit(),
            child: const HomePage(),
          ),
          settings: settings,
        );
    }
  }
}
