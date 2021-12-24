import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:game_demo/screens/games/game_bloc/game_bloc.dart';
import 'package:game_demo/utils/colors.dart';
import 'package:game_demo/widgets/buttons/secondary.dart';
import 'package:game_demo/widgets/my_scaffold.dart';

import 'game_widgets/game_widgets.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          return PageView.builder(
            itemCount: 5,
            controller: _pageController,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text("Game $index"),
                  _GameHeader(
                    onLeftPressed: () {
                      _pageController.animateToPage(
                        1,
                        duration: const Duration(seconds: 375),
                        curve: Curves.easeIn,
                      );
                    },
                    onRightPressed: () {
                      _pageController.animateToPage(
                        1,
                        duration: const Duration(seconds: 375),
                        curve: Curves.easeIn,
                      );
                    },
                  ),
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
                  _GameRow(panelData: state.panelData),
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
                            context.read<GameBloc>().add(const SelectAll());
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
}

class _GameHeader extends StatelessWidget {
  const _GameHeader({
    Key? key,
    required this.onLeftPressed,
    required this.onRightPressed,
  }) : super(key: key);

  final VoidCallback onLeftPressed;
  final VoidCallback onRightPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onLeftPressed,
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
          onPressed: onRightPressed,
          icon: const Icon(
            Icons.chevron_right,
            size: 40,
          ),
        ),
      ],
    );
  }
}

class _GameRow extends StatelessWidget {
  const _GameRow({Key? key, required this.panelData}) : super(key: key);

  final List<PanelData> panelData;

  @override
  Widget build(BuildContext context) {
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
