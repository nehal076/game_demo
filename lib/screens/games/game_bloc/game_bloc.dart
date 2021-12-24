import 'package:bloc/bloc.dart';
import 'package:game_demo/screens/games/game_screen.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameInitial()) {
    on<AddToCart>(_onItemAdded);
  }

  void _onItemAdded(AddToCart event, Emitter<GameState> emit) async {
    List<PanelData> panelData = event.panelData;
    int index = event.index;

    panelData[index].picked = !(panelData[index].picked);

    emit(AddedToCart(panelData: panelData));
  }
}
