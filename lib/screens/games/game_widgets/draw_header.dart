part of 'game_widgets.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
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
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
            DrawDataTable(
              data: [
                {"Draw": "#34534534"},
                {"Draw Date": "Sep 25, 20:30"},
                {"Jackpot": "Rs. 500,000"},
              ],
            )
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_right,
            size: 40,
          ),
        ),
      ],
    );
  }
}
