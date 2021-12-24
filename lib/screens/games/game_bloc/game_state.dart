part of 'game_bloc.dart';

abstract class GameState {
  const GameState();
}

class GameInitial extends GameState {}

class AddedToCart extends GameState {
  final List<PanelData> panelData;
  AddedToCart({required this.panelData});
}

class SelectedAll extends GameState {
  final List<PanelData> panelData;
  SelectedAll({required this.panelData});
}

class RemovedFromCart extends GameState {}
