import 'package:bloc/bloc.dart';
import 'package:game_demo/model/response/response.dart';
import 'package:game_demo/repo/repository.dart';
import 'package:meta/meta.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(GameInitial());

  onHomePageLoad() async {
    GameResponse? gameResponse = await Repository.fetchGame({});
    if (gameResponse?.success == true) {
      emit(GameLoaded(game: gameResponse!));
    }
  }
}
