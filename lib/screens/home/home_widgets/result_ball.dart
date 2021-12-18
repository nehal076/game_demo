part of 'home_widgets.dart';

class ResultBall extends StatelessWidget {
  final String number;
  const ResultBall({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 4),
      height: 50,
      width: 50,
      decoration: const BoxDecoration(
        color: Color(0xffffcb5b),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Color(0x29000000),
            offset: Offset(3, 6),
            blurRadius: 8,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: Text(
          number,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
