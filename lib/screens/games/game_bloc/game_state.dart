part of 'game_bloc.dart';

abstract class GameState {
  const GameState();
}

class GameInitial extends GameState {}

class AddedToCart extends GameState {}

class RemovedFromCart extends GameState {}
