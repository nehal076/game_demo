part of 'game_bloc.dart';

abstract class GameEvent {
  const GameEvent();
}

class AddToCart extends GameEvent {
  final List<PanelData> panelData;
  final int index;

  const AddToCart({
    required this.panelData,
    required this.index,
  });
}

class SelectAll extends GameEvent {
  const SelectAll();
}
