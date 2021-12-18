import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'winner_state.dart';

class WinnerCubit extends Cubit<WinnerState> {
  WinnerCubit() : super(WinnerInitial());
}
