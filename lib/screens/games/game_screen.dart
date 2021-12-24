import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_demo/screens/games/game_bloc/game_bloc.dart';
import 'package:game_demo/utils/colors.dart';
import 'package:game_demo/widgets/buttons/secondary.dart';
import 'package:game_demo/widgets/my_scaffold.dart';
import 'package:velocity_x/velocity_x.dart';

import 'game_widgets/game_widgets.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class PanelData {
  List<int> displayValues;
  bool picked;

  PanelData({
    required this.displayValues,
    required this.picked,
  });
}

class _GameScreenState extends State<GameScreen> {
  List<PanelData> panelData = [
    PanelData(displayValues: [1, 2, 3, 4, 5], picked: false),
    PanelData(displayValues: [6, 7, 8, 9, 1], picked: false),
    PanelData(displayValues: [3, 4, 5, 6, 7], picked: false),
    PanelData(displayValues: [6, 7, 8, 9, 1], picked: false),
    PanelData(displayValues: [6, 7, 8, 9, 1], picked: false),
  ];
  int selectedi = -1;
  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          if (state is SelectedAll) {
            panelData = state.panelData;
          }
          if (state is AddedToCart) {
            panelData = state.panelData;
          }
          return PageView.builder(
            itemCount: 5,
            controller: pageController,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text("Game $index"),
                  _buildHeader(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Click on ',
                              style: TextStyle(
                                color: ZeplinColors.brownish_grey_three,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            TextSpan(
                              text: 'PLUS (+)',
                              style: TextStyle(
                                color: ZeplinColors.brownish_grey_three,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: ' sign to select ticket.',
                              style: TextStyle(
                                color: ZeplinColors.brownish_grey_three,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                        style: TextStyle(
                          color: ZeplinColors.brownish_grey_three,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Rs. 20.0 / Ticket',
                        style: TextStyle(
                          color: ZeplinColors.brownish_grey_three,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ).p8(),
                  _buildGameRow(),
                  Row(
                    children: [
                      Expanded(
                        child: SecondaryButton(
                          onPressed: () {},
                          text: 'Show Next 5 Tickets',
                          type: ButtonType.line_art,
                        ),
                      ),
                      const WidthBox(12),
                      Expanded(
                        child: SecondaryButton(
                          onPressed: () {
                            BlocProvider.of<GameBloc>(context).add(
                              SelectAll(panelData: panelData),
                            );
                          },
                          text: 'Select All 5',
                          type: ButtonType.line_art,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
      ).p8(),
    );
  }

  _buildHeader() {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              pageController.animateToPage(
                1,
                duration: const Duration(seconds: 375),
                curve: Curves.easeIn,
              );
            });
          },
          icon: const Icon(
            Icons.chevron_left,
            size: 40,
          ),
        ),
        Image.asset('assets/images/lottery2.png'),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeightBox(20),
            Text(
              'Mahajana Sampatha',
              style: TextStyle(
                color: ZeplinColors.royal_purple_three,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            DrawDataTable(
              data: [
                {"Draw": "#123456"},
                {"Draw Date": "Dec 18, 20:30"},
                {"Jackpot": "Rs. 500,000"},
              ],
            )
          ],
        ),
        IconButton(
          onPressed: () {
            setState(() {
              pageController.animateToPage(
                1,
                duration: const Duration(seconds: 375),
                curve: Curves.easeIn,
              );
            });
          },
          icon: const Icon(
            Icons.chevron_right,
            size: 40,
          ),
        ),
      ],
    );
  }

  _buildGameRow() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: panelData.length,
      itemBuilder: (ctx, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Ball(
                color: panelData[index].picked ? BallColor.blue : BallColor.red,
                number: "D"),
            for (var j in panelData[index].displayValues)
              Ball(
                color: panelData[index].picked
                    ? BallColor.green
                    : BallColor.magenta,
                number: j,
              ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: panelData[index].picked
                      ? ZeplinColors.toxic_green
                      : ZeplinColors.grey,
                ),
                color:
                    panelData[index].picked ? ZeplinColors.toxic_green : null,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                icon: Icon(
                  panelData[index].picked ? Icons.check : Icons.add,
                  color: panelData[index].picked
                      ? Colors.white
                      : ZeplinColors.grey,
                ),
                onPressed: () {
                  BlocProvider.of<GameBloc>(context).add(
                    AddToCart(
                      panelData: panelData,
                      index: index,
                    ),
                  );
                },
              ),
            ),
          ],
        ).p8();
      },
    );
  }
}
