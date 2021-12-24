import 'package:bloc/bloc.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameInitial()) {
    on<AddToCart>(_onItemAdded);
  }

  void _onItemAdded(AddToCart event, Emitter<GameState> emit) async {
    // final state = this.state;
    // if (state is HomeG) {
    //   try {
    //     shoppingRepository.addItemToCart(event.item);
    //     emit(CartLoaded(cart: Cart(items: [...state.cart.items, event.item])));
    //   } on Exception {
    //     emit(CartError());
    //   }
    // }
  }
}
