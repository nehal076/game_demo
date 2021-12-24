import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'panel_data_state.dart';

class PanelDataCubit extends Cubit<List> {
  PanelDataCubit() : super([false, 0]);

  void onTap(index, value) => emit([state[0] = value, index]);
}
