part of 'game_bloc.dart';

abstract class GameEvent {
  const GameEvent();
}

class AddToCart extends GameEvent {
  final int index;

  const AddToCart({
    required this.index,
  });
}
