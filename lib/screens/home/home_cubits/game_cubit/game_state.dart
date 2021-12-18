part of 'game_cubit.dart';

@immutable
abstract class GameState {}

class GameInitial extends GameState {}

class GameLoaded extends GameState {
  final GameResponse game;

  GameLoaded({required this.game});
}
