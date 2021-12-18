part of 'home_widgets.dart';

class DrawCard extends StatelessWidget {
  final AssetImage backgroundImage;
  final Color color;
  final Color backgroundColor;
  const DrawCard({
    Key? key,
    required this.backgroundImage,
    required this.color,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: backgroundImage,
          fit: BoxFit.cover,
        ),
      ),
      margin: const EdgeInsets.all(6),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "#123456",
                  style: TextStyle(
                    color: Color(0xfff3f3f3),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ).p8(),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/game1_logo.png',
                      height: 45,
                    ),
                    const Text(
                      'Supiri Vasana',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ).p4(),
                  ],
                ).p8(),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const NextSuperPrize(),
                      DrawDate(color: backgroundColor),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        DrawTile(
                          icon: Icons.add,
                          title: "Subscribe".toUpperCase(),
                          color: color,
                        ),
                        DrawTile(
                          icon: CupertinoIcons.hand_draw_fill,
                          title: "Pick".toUpperCase(),
                          color: color,
                        ),
                        DrawTile(
                          icon: Icons.shopping_cart,
                          title: "Buy Now".toUpperCase(),
                          color: color,
                        ),
                      ],
                    ),
                  ).p8(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
