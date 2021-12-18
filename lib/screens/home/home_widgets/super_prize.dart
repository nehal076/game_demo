part of 'home_widgets.dart';

class NextSuperPrize extends StatelessWidget {
  const NextSuperPrize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeightBox(8),
        Text(
          'Next Super Prize'.toUpperCase(),
          style: const TextStyle(
            fontFamily: 'OpenSans',
            color: Color(0xfff3f3f3),
            fontSize: 12,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
        const HeightBox(4),
        const Text(
          'LKR. 2,146,039.60',
          style: TextStyle(
            fontFamily: 'OpenSans',
            color: Color(0xfff3f3f3),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
