part of 'game_bloc.dart';

class GameState {
  const GameState({required this.panelData});

  const GameState.initial()
      : this(
          panelData: const [
            PanelData(displayValues: [1, 2, 3, 4, 5], picked: false),
            PanelData(displayValues: [6, 7, 8, 9, 1], picked: false),
            PanelData(displayValues: [3, 4, 5, 6, 7], picked: false),
            PanelData(displayValues: [6, 7, 8, 9, 1], picked: false),
            PanelData(displayValues: [6, 7, 8, 9, 1], picked: false),
          ],
        );

  final List<PanelData> panelData;

  GameState copyWith({
    List<PanelData>? panelData,
  }) {
    return GameState(
      panelData: panelData ?? this.panelData,
    );
  }
}

class PanelData {
  final List<int> displayValues;
  final bool picked;

  const PanelData({
    required this.displayValues,
    required this.picked,
  });

  PanelData copyWith({
    List<int>? displayValues,
    bool? picked,
  }) {
    return PanelData(
      displayValues: displayValues ?? this.displayValues,
      picked: picked ?? this.picked,
    );
  }
}
