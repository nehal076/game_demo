part of 'home_widgets.dart';

class DrawDate extends StatelessWidget {
  final Color color;
  const DrawDate({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    '19',
                    style: TextStyle(
                      height: 1,
                      fontSize: 22,
                      color: color,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'OCT',
                        style: TextStyle(
                          fontSize: 10,
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '2021',
                        style: TextStyle(
                          fontSize: 10,
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ).p2(),
            ),
            const WidthBox(1),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        '4:00',
                        style: TextStyle(
                          fontSize: 10,
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'PM',
                        style: TextStyle(
                          fontSize: 10,
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ).p2(),
            ),
          ],
        ),
      ),
    );
  }
}
