import 'package:bloc/bloc.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(const GameState.initial()) {
    on<AddToCart>(_onItemAdded);
    on<SelectAll>(_onSelectAll);
  }

  void _onItemAdded(AddToCart event, Emitter<GameState> emit) {
    final index = event.index;
    final panelData = [...event.panelData];
    final targetData = panelData[index];
    panelData.replaceRange(event.index, event.index, [
      targetData.copyWith(picked: !targetData.picked),
    ]);
    emit(state.copyWith(panelData: panelData));
  }

  void _onSelectAll(SelectAll event, Emitter<GameState> emit) {
    emit(
      state.copyWith(
          panelData: state.panelData
              .map((data) => data.copyWith(picked: true))
              .toList()),
    );
  }
}
