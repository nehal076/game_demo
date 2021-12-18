import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:game_demo/screens/home/home_cubits/game_cubit/game_cubit.dart';
import 'package:game_demo/screens/home/home_widgets/home_widgets.dart';
import 'package:game_demo/utils/colors.dart';
import 'package:game_demo/utils/screens.dart';
import 'package:game_demo/widgets/buttons/primary.dart';
import 'package:game_demo/widgets/my_scaffold.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MyMatchInfo> matchInfoList = [
    MyMatchInfo(
        match: "Govisetha", winners: "4065779", prizePool: "140,481,220.00"),
    MyMatchInfo(
        match: "Govisetha", winners: "3454534", prizePool: "140,481,220.00"),
    MyMatchInfo(
        match: "Govisetha", winners: "4534543", prizePool: "140,481,220.00"),
    MyMatchInfo(
        match: "Govisetha", winners: "4065779", prizePool: "140,481,220.00"),
    MyMatchInfo(
        match: "Govisetha", winners: "4065779", prizePool: "140,481,220.00"),
    MyMatchInfo(
        match: "Govisetha", winners: "4065779", prizePool: "140,481,220.00"),
    MyMatchInfo(
        match: "Govisetha", winners: "4065779", prizePool: "140,481,220.00"),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      BlocProvider.of<GameCubit>(context).onHomePageLoad();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 180,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ZeplinColors.pale_grey,
                        ),
                        child: const Icon(
                          Icons.arrow_left_outlined,
                          color: ZeplinColors.grey,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ZeplinColors.pale_grey,
                        ),
                        child: const Icon(
                          Icons.arrow_right_outlined,
                          color: ZeplinColors.grey,
                        ),
                      ),
                    ],
                  ).px8(),
                ),
              ],
            ),
            const HeightBox(10),
            const Text(
              'OUR LOTTERIES',
              style: TextStyle(
                color: Color(0xff363636),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            BlocBuilder<GameCubit, GameState>(
              builder: (context, state) {
                return Column(
                  children: const [
                    DrawCard(
                      backgroundImage: AssetImage(
                        'assets/background/bg_purple.png',
                      ),
                      backgroundColor: Color(0xff3b1f71),
                      color: Color(0xff6f42c1),
                    ),
                    DrawCard(
                      backgroundImage: AssetImage(
                        'assets/background/bg_red.png',
                      ),
                      backgroundColor: Color(0xff8a070d),
                      color: Color(0xffff8000),
                    ),
                    DrawCard(
                      backgroundImage: AssetImage(
                        'assets/background/bg_green.png',
                      ),
                      backgroundColor: Color(0xff165823),
                      color: Color(0xff179f32),
                    ),
                    DrawCard(
                      backgroundImage: AssetImage(
                        'assets/background/bg_dark_green.png',
                      ),
                      backgroundColor: Color(0xff165851),
                      color: Color(0xff179f64),
                    ),
                  ],
                );
              },
            ),
            const HeightBox(10),
            PrimaryButton(
              onPressed: () {
                Navigator.pushNamed(context, Screen.game_screen);
              },
              text: 'View More'.toUpperCase(),
              type: ButtonType.line_art,
            ),
            const HeightBox(20),
            const TableHeader(
              title: 'Winners',
              date: 'OCT, 2021 Winners',
            ).px2(),
            DataTable(
              dataRowHeight: 45,
              headingRowHeight: 45,
              headingTextStyle: const TextStyle(
                color: Color(0xff270132),
                fontWeight: FontWeight.w800,
              ),
              dataTextStyle: const TextStyle(
                color: Color(0xff6a2b6b),
                fontWeight: FontWeight.w800,
              ),
              headingRowColor:
                  MaterialStateProperty.all<Color>(const Color(0xffffcb5b)),
              columns: const [
                DataColumn(label: Text('Lottery')),
                DataColumn(label: Text('Winner')),
                DataColumn(label: Text('LKR Total')),
              ],
              rows: [
                for (var i = 0; i < matchInfoList.length; i++)
                  DataRow(
                    color: i.isEven
                        ? MaterialStateProperty.all<Color>(
                            const Color(0xffebebeb),
                          )
                        : null,
                    cells: [
                      DataCell(Text(matchInfoList[i].match).centered()),
                      DataCell(Text(matchInfoList[i].winners).centered()),
                      DataCell(Text(matchInfoList[i].prizePool).centered()),
                    ],
                  )
              ],
            ),
            const HeightBox(10),
            PrimaryButton(
              onPressed: () {},
              text: 'View All'.toUpperCase(),
              type: ButtonType.line_art,
            ),
            const HeightBox(20),
            Column(
              children: [
                const TableHeader(
                  title: 'Results',
                  date: 'SUNDAY, OCTOBER 31, 2021',
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff707070),
                    ),
                  ),
                  child: Column(
                    children: [
                      const ResultRow(),
                      const ResultRow(),
                      PrimaryButton(
                        onPressed: () {},
                        text: 'View More'.toUpperCase(),
                      ),
                    ],
                  ),
                ),
              ],
            ).px4(),
            const HeightBox(20),
            Container(
              color: ZeplinColors.white_three,
              margin: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const TableHeader(
                    title: 'Top Winners',
                    date: 'SUNDAY, OCTOBER 31, 2021',
                  ),
                  const WinnerTile(),
                  const WinnerTile(),
                  const WinnerTile(),
                  PrimaryButton(
                    onPressed: () {},
                    text: 'View More'.toUpperCase(),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xff707070),
                ),
              ),
              child: Column(
                children: [
                  const TableHeader(
                    title: 'Media',
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: ZeplinColors.light_gold,
                    ),
                    child: const MediaTile(),
                  )
                ],
              ),
            ),
            const HeightBox(20),
          ],
        ),
      ),
    );
  }
}

class MyMatchInfo {
  String match;
  String winners;
  String prizePool;

  MyMatchInfo({
    required this.match,
    required this.winners,
    required this.prizePool,
  });
}
