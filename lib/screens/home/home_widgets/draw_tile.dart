part of 'home_widgets.dart';

class DrawTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  const DrawTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ).pSymmetric(v: 4),
      ).p2(),
    );
  }
}
