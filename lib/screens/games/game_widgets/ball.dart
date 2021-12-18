part of 'game_widgets.dart';

class Ball extends StatelessWidget {
  final String color;
  final dynamic number;
  const Ball({Key? key, required this.color, required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/ball/ball_$color.png',
          height: 50,
          width: 50,
        ),
        Text(
          number.toString(),
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
