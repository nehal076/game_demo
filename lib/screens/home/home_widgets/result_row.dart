part of 'home_widgets.dart';

class ResultRow extends StatelessWidget {
  const ResultRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const Text(
              'MAHAJANA SAMPATHA 4572',
              style: TextStyle(
                color: Color(0xff39455f),
                fontSize: 18,
                fontFamily: 'SegoeUI',
                fontWeight: FontWeight.w700,
              ),
            ).pOnly(bottom: 8),
            Row(
              children: [
                for (var number in ['D', '5', '1', '9', '3'])
                  ResultBall(number: number),
              ],
            ),
          ],
        ).p16(),
      ],
    );
  }
}
